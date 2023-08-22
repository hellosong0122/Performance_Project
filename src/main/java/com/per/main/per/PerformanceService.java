package com.per.main.per;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PerformanceService {
	@Autowired
	private PerformanceDAO performanceDAO;
	
	public void setAdd() throws Exception {
		
		
	}
	
	public void getJson(int n) throws Exception {
		String key = "283590c11ab54671ad1376d65a8ae2c4";
		String stdate = "20230801";
		String eddate = "20230830";
		String cpage = Integer.toString(n);
		String rows = "10";
		String inputLine;
		String result = "";
		
		URL url = new URL("http://kopis.or.kr/openApi/restful/pblprfr"+
				"?service="+key+
				"&stdate="+stdate+
				"&eddate="+eddate+
				"&cpage="+cpage+
				"&rows="+rows
		);
		
		BufferedReader bf;
		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		while((inputLine=bf.readLine())!=null) {
			result += inputLine.trim();
		}
		System.out.println(result);
		JSONObject jsonObject = XML.toJSONObject(result);
		
		JSONObject dbs = (JSONObject) jsonObject.get("dbs");
		JSONArray dbArr = (JSONArray) dbs.get("db"); 
		
		System.out.println("--------------");
		for(int i=0; i<dbArr.length(); i++) {
			JSONObject db = (JSONObject) dbArr.get(i);
			System.out.println(db.get("mt20id"));
			System.out.println(db.get("prfnm"));
			System.out.println(db.get("prfpdfrom"));
			System.out.println(db.get("prfpdto"));
			System.out.println(db.get("genrenm"));
			System.out.println(db.get("poster"));

			System.out.println("-------------");
		}
	}
}
