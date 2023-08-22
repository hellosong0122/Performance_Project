package com.per.main.per;

public class PerformancePlaceDTO {
	//공연시설ID
	private String mt10id;
	//공연시설명
	private String fcltynm;
	//주소
	private String adres;
	//위도
	private Long la;
	//경도
	private Long lo;
	//전화번호
	private String telno;
	
	private PerformanceDTO performanceDTO;

	
	public String getMt10id() {
		return mt10id;
	}

	public void setMt10id(String mt10id) {
		this.mt10id = mt10id;
	}

	public String getFcltynm() {
		return fcltynm;
	}

	public void setFcltynm(String fcltynm) {
		this.fcltynm = fcltynm;
	}

	public String getAdres() {
		return adres;
	}

	public void setAdres(String adres) {
		this.adres = adres;
	}

	public Long getLa() {
		return la;
	}

	public void setLa(Long la) {
		this.la = la;
	}

	public Long getLo() {
		return lo;
	}

	public void setLo(Long lo) {
		this.lo = lo;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public PerformanceDTO getPerformanceDTO() {
		return performanceDTO;
	}

	public void setPerformanceDTO(PerformanceDTO performanceDTO) {
		this.performanceDTO = performanceDTO;
	}
	
	
}
