package com.per.main.per;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;

public class PerformanceApi {
	private final String KEY = "283590c11ab54671ad1376d65a8ae2c4";
	
	public PerformanceDTO getPerDetail(String id) throws Exception {
		String inputLine;
		String result = "";
		
		URL url = new URL("http://kopis.or.kr/openApi/restful/pblprfr/"+
				id+
				"?service="+KEY
		);
		
		BufferedReader bf;
		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		while((inputLine=bf.readLine())!=null) {
			result += inputLine.trim();
		}
		JSONObject jsonObject = XML.toJSONObject(result);
		
		JSONObject dbs = (JSONObject) jsonObject.get("dbs");
		JSONObject db = (JSONObject) dbs.get("db");
		
		String date = (String) db.get("prfpdfrom");
		SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyy.mm.dd");
		SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date tempDate = beforeFormat.parse(date);
		String transDate = afterFormat.format(tempDate);
		Date d1 = Date.valueOf(transDate);
		
		PerformanceDTO performanceDTO = new PerformanceDTO();
		performanceDTO.setMt20id((String) db.get("mt20id"));
		performanceDTO.setMt10id((String) db.get("mt10id"));
		performanceDTO.setPrfnm((String) db.get("prfnm"));
		performanceDTO.setPrfpdfrom(d1);
		
		date = (String) db.get("prfpdto");
		tempDate = beforeFormat.parse(date);
		transDate = afterFormat.format(tempDate);
		Date d2 = Date.valueOf(transDate);
		
		performanceDTO.setPrfpdto(d2);
		performanceDTO.setPrfcast((String) db.get("prfcast"));
		performanceDTO.setPrfruntime((String) db.get("prfruntime"));
		performanceDTO.setGenrenm((String) db.get("genrenm"));
		performanceDTO.setPoster((String) db.get("poster"));
		performanceDTO.setDtguidance((String) db.get("dtguidance"));
		
		return performanceDTO;
	}
	
	public List<PerformanceDTO> getPerList(int n) throws Exception {
		String stdate = "20230724";
		String eddate = "20230824";
		String cpage = Integer.toString(n);
		String rows = "500";
		String signgucode = "11"; //서울 
		String inputLine;
		String result = "";
		
		List<PerformanceDTO> ar = new ArrayList<PerformanceDTO>();
		
		// URI를 URL객체로 저장
		URL url = new URL("http://kopis.or.kr/openApi/restful/pblprfr"+
				"?service="+KEY+
				"&stdate="+stdate+
				"&eddate="+eddate+
				"&cpage="+cpage+
				"&rows="+rows+
				"&signgucode="+signgucode
		);
		
		BufferedReader bf;
		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		// 버퍼 데이터(응답 메세지)를 읽어서 result에 저장
		// result에는 XML 형식의 응답 데이터가 String으로 저장되어 있음
		while((inputLine=bf.readLine())!=null) {
			result += inputLine.trim();
		}
		
        // XML String을 JSON Object로 변환
		JSONObject jsonObject = XML.toJSONObject(result);
		
		JSONObject dbs = (JSONObject) jsonObject.get("dbs");
		JSONArray dbArr = (JSONArray) dbs.get("db"); 
		
		for(int i=0; i<dbArr.length(); i++) {
			JSONObject db = (JSONObject) dbArr.get(i);
			PerformanceDTO performanceDTO = new PerformanceDTO();
			if(!db.get("prfstate").equals("공연완료")) {
				if(db.get("genrenm").equals("뮤지컬") || db.get("genrenm").equals("연극")) {
					performanceDTO.setMt20id((String) db.get("mt20id"));
					ar.add(performanceDTO);
				}
			}
		}
		return ar;
	}
	
	public List<PerformancePlaceDTO> getPlaceList(int n) throws Exception {
		String cpage = Integer.toString(n);
		String rows = "1000";
		String signgucode ="11"; //서울 
		String inputLine;
		String result = "";
		
		List<PerformancePlaceDTO> ar = new ArrayList<PerformancePlaceDTO>();
		
		URL url = new URL("http://kopis.or.kr/openApi/restful/prfplc"+
				"?service="+KEY+
				"&cpage="+cpage+
				"&rows="+rows+
				"&signgucode="+signgucode
		);
		
		BufferedReader bf;
		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		while((inputLine=bf.readLine())!=null) {
			result += inputLine.trim();
		}
		JSONObject jsonObject = XML.toJSONObject(result);
		
		JSONObject dbs = (JSONObject) jsonObject.get("dbs");
		JSONArray dbArr = (JSONArray) dbs.get("db"); 
		
		for(int i=0; i<dbArr.length(); i++) {
			JSONObject db = (JSONObject) dbArr.get(i);
			PerformancePlaceDTO placeDTO = new PerformancePlaceDTO();
			if(!(db.get("fcltychartr").equals("기타(해외등)") || db.get("fcltychartr").equals("기타(비공연장)"))) {
				placeDTO.setMt10id((String) db.get("mt10id"));
				ar.add(placeDTO);
			}
		}
		return ar;
	}
	
	public PerformancePlaceDTO getPlaceDetail(String id) throws Exception {
		String inputLine;
		String result = "";
		
		URL url = new URL("http://kopis.or.kr/openApi/restful/prfplc/"+
				id+
				"?service="+KEY
		);
		
		BufferedReader bf;
		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		while((inputLine=bf.readLine())!=null) {
			result += inputLine.trim();
		}
		JSONObject jsonObject = XML.toJSONObject(result);
		
		JSONObject dbs = (JSONObject) jsonObject.get("dbs");
		JSONObject db = (JSONObject) dbs.get("db");
		
		PerformancePlaceDTO placeDTO = new PerformancePlaceDTO();
		placeDTO.setMt10id((String) db.get("mt10id"));
		placeDTO.setFcltynm(String.valueOf(db.get("fcltynm")));
		placeDTO.setAdres((String) db.get("adres"));
		placeDTO.setLa(Double.parseDouble(String.valueOf(db.get("la"))));
		placeDTO.setLo(Double.parseDouble(String.valueOf(db.get("lo"))));
		placeDTO.setTelno((String) db.get("telno"));
		
		return placeDTO;
	}
}
