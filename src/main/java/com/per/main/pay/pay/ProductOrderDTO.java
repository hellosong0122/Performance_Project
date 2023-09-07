package com.per.main.pay.pay;

import java.sql.Date;

import com.per.main.pay.product.ProductDTO;

public class ProductOrderDTO {

	private String orderNum; // 주문번호 merchant_uid 우리가 직접 만든 주문번호 iamportlib.js에서 만
	private String imp_uid; // iamport 에서 생성해주는
	private Long P_Num; // 상품번호
	private String P_Name; // 상품이름
	private Long P_Count;
	private Long memberNum; // 회원번
	private Date orderDate;
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
	
	
	
	public Long getP_Num() {
		return P_Num;
	}
	public void setP_Num(Long p_Num) {
		P_Num = p_Num;
	}
	public String getP_Name() {
		return P_Name;
	}
	public void setP_Name(String p_Name) {
		P_Name = p_Name;
	}
	public Long getP_Count() {
		return P_Count;
	}
	public void setP_Count(Long p_Count) {
		P_Count = p_Count;
	}
	public Long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "ProductOrderDTO [orderNum=" + orderNum + ", imp_uid=" + imp_uid + ", P_Num=" + P_Num + ", P_Name="
				+ P_Name + ", P_Count=" + P_Count + ", memberNum=" + memberNum + ", orderDate=" + orderDate
				+ ", totalPrice=" + totalPrice + "]";
	}
	
		
}
