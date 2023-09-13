package com.per.main.pay.pay;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.per.utils.IamPortKey;

@Service
public class PayService {

	private IamPortKey key = new IamPortKey();

	@Autowired
	private PayDAO payDAO;

	public String getToken() throws Exception {

		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/users/getToken");

		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);
		JsonObject json = new JsonObject();

		json.addProperty("imp_key", key.getAPIKey());
		json.addProperty("imp_secret", key.getAPISecret());

		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));

		bw.write(json.toString());
		bw.flush();
		bw.close();

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

		Gson gson = new Gson();

		String response = gson.fromJson(br.readLine(), Map.class).get("response").toString();

		String token = gson.fromJson(response, Map.class).get("access_token").toString();

		br.close();
		conn.disconnect();

		return token;
	}

	public String paymentInfo(String imp_uid, String access_token) throws IOException, ParseException {
		HttpsURLConnection conn = null;

		URL url = new URL("https://api.iamport.kr/payments/" + imp_uid);

		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", access_token);
		conn.setDoOutput(true);

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

		JSONParser parser = new JSONParser();

		JSONObject p = (JSONObject) parser.parse(br.readLine());

		String response = p.get("response").toString();

		p = (JSONObject) parser.parse(response);

		String amount = p.get("amount").toString();

		System.out.println("check : " + amount);
		return amount;
	}

	public void canclePay(String imp_uid, String token, String amount, String string) throws Exception {

	}

	public int insertPayData(ProductOrderDTO orderDTO) throws Exception {
		System.out.println(orderDTO.toString());
		return payDAO.insertPayData(orderDTO);
	}
	
	public ProductOrderDTO orderDetail(ProductOrderDTO productOrderDTO) throws Exception{
		
		return payDAO.orderDetail(productOrderDTO);
	}

	public int removeOrder(ProductOrderDTO productOrderDTO) throws Exception {
		if (!productOrderDTO.getImp_uid().equals("")) {
			
			String token= getToken();
			Long price = productOrderDTO.getTotalPrice();
			Long returnPrice = price;
			payMentCancle(token,productOrderDTO.getImp_uid(),price.toString(),"취소");
		}
		return payDAO.removeOrder(productOrderDTO);
	}

	public void payMentCancle(String access_token, String imp_uid, String amount,String reason) throws IOException, ParseException {

		System.out.println("imp_uid = " + imp_uid);
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/payments/cancel");
			
		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("POST");

		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setRequestProperty("Authorization", access_token);

		conn.setDoOutput(true);
		
		JsonObject json = new JsonObject();

		json.addProperty("reason", reason);
		json.addProperty("imp_uid", imp_uid);
		json.addProperty("amount", amount);
		json.addProperty("checksum", amount);
		
		System.out.println("check 1 : " + imp_uid);
		System.out.println("check 2 : " + amount);
		System.out.println(reason);
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));

		bw.write(json.toString());
		bw.flush();
		bw.close();
		

		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
	}




}
