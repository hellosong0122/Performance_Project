package com.per.main.pay.cart;

public class CartDTO {

	private Long Cart_Num;
	private Long P_Num;
	private String P_Name;
	private Long P_Price;
	private Long Cart_Count;
	private Long member_num;
	private String Cart_Reg;
	private String P_Image;

	public Long getCart_Num() {
		return Cart_Num;
	}

	public void setCart_Num(Long cart_Num) {
		Cart_Num = cart_Num;
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

	public Long getP_Price() {
		return P_Price;
	}

	public void setP_Price(Long p_Price) {
		P_Price = p_Price;
	}

	public Long getCart_Count() {
		return Cart_Count;
	}

	public void setCart_Count(Long cart_Count) {
		Cart_Count = cart_Count;
	}

	public Long getMember_num() {
		return member_num;
	}

	public void setMember_num(Long member_num) {
		this.member_num = member_num;
	}

	public String getCart_Reg() {
		return Cart_Reg;
	}

	public void setCart_Reg(String cart_Reg) {
		Cart_Reg = cart_Reg;
	}

	public String getP_Image() {
		return P_Image;
	}

	public void setP_Image(String p_Image) {
		P_Image = p_Image;
	}

	@Override
	public String toString() {
		return "CartDTO [Cart_Num=" + Cart_Num + ", P_Num=" + P_Num + ", P_Name=" + P_Name + ", P_Price=" + P_Price
				+ ", Cart_Count=" + Cart_Count + ", member_num=" + member_num + ", Cart_Reg=" + Cart_Reg + ", P_Image="
				+ P_Image + "]";
	}

	
	
}
