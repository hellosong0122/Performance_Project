package com.per.main.book;

import java.sql.Date;

public class PerformanceOrderDTO {

	private String orderNum; // 주문번호 merchant_uid 우리가 직접 만든 주문번호 iamportlib.js에서 만
	
	private String imp_uid; // iamport 에서 생성해주는
	// 공연번호
	private Long performance_num;	
	// 공연명
	private String prfnm;
	//공연시설id
	private String mt10id;
	// 예약날짜
	private Date performanceDate;
	// 에약시간
	private String performanceTime;
	// 공연좌석 티켓
	private String perSeat;	
	// 회원번호
	private Long memberNum;
	// 총금액
	private Long totalPrice;

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getImp_uid() {
		return imp_uid;
	}

	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}

	public Long getPerformance_num() {
		return performance_num;
	}

	public void setPerformance_num(Long performance_num) {
		this.performance_num = performance_num;
	}

	public String getPrfnm() {
		return prfnm;
	}

	public void setPrfnm(String prfnm) {
		this.prfnm = prfnm;
	}
	


	public String getMt10id() {
		return mt10id;
	}

	public void setMt10id(String mt10id) {
		this.mt10id = mt10id;
	}

	public Date getPerformanceDate() {
		return performanceDate;
	}

	public void setPerformanceDate(Date performanceDate) {
		this.performanceDate = performanceDate;
	}

	public String getPerformanceTime() {
		return performanceTime;
	}

	public void setPerformanceTime(String performanceTime) {
		this.performanceTime = performanceTime;
	}

	public String getPerSeat() {
		return perSeat;
	}

	public void setPerSeat(String perSeat) {
		this.perSeat = perSeat;
	}

	public Long getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}

	public Long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "PerformanceOrderDTO [orderNum=" + orderNum + ", imp_uid=" + imp_uid + ", performance_num="
				+ performance_num + ", prfnm=" + prfnm + ", mt10id=" + mt10id +", performanceDate=" + performanceDate + ", performanceTime="
				+ performanceTime + ", perSeat=" + perSeat + ", memberNum=" + memberNum + ", totalPrice=" + totalPrice
				+ "]";
	}
	
	

}