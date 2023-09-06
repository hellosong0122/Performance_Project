package com.per.main.book;

import java.sql.Date;

public class BookDTO {
	
	//티켓ID
	private String ticketId;
	//공연번호
	private Long performance_num;
	//좌석ID
	private String seatId;
	//이메일
	private String email;
	//공연명
	private String prfnm;
	//예약날짜
	private Date reservDate;
	//에약시간 
	private String resevTime;
	//좌석가격
	private Long seatPrice;
	//구매자ID
	private String Id;
	
	
	public String getTicketId() {
		return ticketId;
	}
	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}
	
	public Long getPerformance_num() {
		return performance_num;
	}
	public void setPerformance_num(Long performance_num) {
		this.performance_num = performance_num;
	}
	public String getSeatId() {
		return seatId;
	}
	public void setSeatId(String seatId) {
		this.seatId = seatId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPrfnm() {
		return prfnm;
	}
	public void setPrfnm(String prfnm) {
		this.prfnm = prfnm;
	}
	public Date getReservDate() {
		return reservDate;
	}
	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}
	public String getResevTime() {
		return resevTime;
	}
	public void setResevTime(String resevTime) {
		this.resevTime = resevTime;
	}
	public Long getSeatPrice() {
		return seatPrice;
	}
	public void setSeatPrice(Long seatPrice) {
		this.seatPrice = seatPrice;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	
	
	
	}
