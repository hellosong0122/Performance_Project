package com.per.main.review.good;

import java.sql.Date;

public class GoodDTO {
	//번호
	private Long good_num;
	//댓글번호
	private Long review_num;
	//ID
	private String id;
	//등록일
	private Date regDate;
	
	
	public Long getGood_num() {
		return good_num;
	}
	public void setGood_num(Long good_num) {
		this.good_num = good_num;
	}
	public Long getReview_num() {
		return review_num;
	}
	public void setReview_num(Long review_num) {
		this.review_num = review_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

}
