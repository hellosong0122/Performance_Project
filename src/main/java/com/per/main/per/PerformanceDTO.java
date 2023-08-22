package com.per.main.per;

import java.sql.Date;

public class PerformanceDTO {
	//공연번호
	private	Long performance_num;
	//공연시설ID
	private String mt10id;
	//공연ID
	private String mt20id;
	//공연명
	private String prfnm;
	//공연시작일
	private Date prfpdfrom;
	//공연종료일
	private Date prfpdto;
	//출연진
	private String prfcast;
	//런타임
	private	String prfruntime;
	//공연장르
	private	String genrenm;
	//이미지
	private String poster;
	
	
	public Long getPerformance_num() {
		return performance_num;
	}
	public void setPerformance_num(Long performance_num) {
		this.performance_num = performance_num;
	}
	public String getMt10id() {
		return mt10id;
	}
	public void setMt10id(String mt10id) {
		this.mt10id = mt10id;
	}
	public String getMt20id() {
		return mt20id;
	}
	public void setMt20id(String mt20id) {
		this.mt20id = mt20id;
	}
	public String getPrfnm() {
		return prfnm;
	}
	public void setPrfnm(String prfnm) {
		this.prfnm = prfnm;
	}
	public Date getPrfpdfrom() {
		return prfpdfrom;
	}
	public void setPrfpdfrom(Date prfpdfrom) {
		this.prfpdfrom = prfpdfrom;
	}
	public Date getPrfpdto() {
		return prfpdto;
	}
	public void setPrfpdto(Date prfpdto) {
		this.prfpdto = prfpdto;
	}
	public String getPrfcast() {
		return prfcast;
	}
	public void setPrfcast(String prfcast) {
		this.prfcast = prfcast;
	}
	public String getPrfruntime() {
		return prfruntime;
	}
	public void setPrfruntime(String prfruntime) {
		this.prfruntime = prfruntime;
	}
	public String getGenrenm() {
		return genrenm;
	}
	public void setGenrenm(String genrenm) {
		this.genrenm = genrenm;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	
}
