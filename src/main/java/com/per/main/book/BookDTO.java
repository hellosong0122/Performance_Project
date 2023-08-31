package com.per.main.book;

import java.sql.Date;

public class BookDTO {
	
	//티켓ID
	private String ticketId;
	//공연번호
	private Long performance_Num;
	//좌석ID
	private String seatId;
	//이메일
	private String email;
	//등록일자(예매일자)
	private Date bookdate;
	//가격
	private String price;
	
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTicketId() {
		return ticketId;
	}
	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}
	public Long getPerformance_Num() {
		return performance_Num;
	}
	public void setPerformance_Num(Long performance_Num) {
		this.performance_Num = performance_Num;
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
	public Date getBookdate() {
		return bookdate;
	}
	public void setRegdate(Date bookdate) {
		this.bookdate = bookdate;
	}
}
