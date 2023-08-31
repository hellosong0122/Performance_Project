package com.per.main.review;

import java.sql.Date;

public class ReviewDTO {
	//댓글번호
	private Long review_num;
	//공연번호
	private Long performance_num;
	//내용
	private String contents;
	//좋아요
	private Long good;
	//등록일
	private Date regDate;
	
	
	public Long getReview_num() {
		return review_num;
	}
	public void setReview_num(Long review_num) {
		this.review_num = review_num;
	}
	public Long getPerformance_num() {
		return performance_num;
	}
	public void setPerformance_num(Long performance_num) {
		this.performance_num = performance_num;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Long getGood() {
		return good;
	}
	public void setGood(Long good) {
		this.good = good;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
