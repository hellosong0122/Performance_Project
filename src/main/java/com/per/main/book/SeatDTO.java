package com.per.main.book;

import java.sql.Date;

public class SeatDTO {
	private Long seat_num;
	private String title;
	private Date regDate;
	private Long price;
	
	public Long getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(Long seat_num) {
		this.seat_num = seat_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "SeatDTO [seat_num=" + seat_num + ", title=" + title + ", regDate=" + regDate + ", price=" + price + "]";
	}
	
}
