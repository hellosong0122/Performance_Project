package com.per.main.pay.product;

public class ProductVO {
	private Long p_Num; //
	private String p_Name; // 상품이
	private Integer p_Price; // 1개 가
	private Integer p_Counter; // 총 갯
	private Integer p_Total; // 총 가

	public Long getP_Num() {
		return p_Num;
	}

	public void setP_Num(Long p_Num) {
		this.p_Num = p_Num;
	}

	public String getP_Name() {
		return p_Name;
	}

	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}

	public Integer getP_Price() {
		return p_Price;
	}

	public void setP_Price(Integer p_Price) {
		this.p_Price = p_Price;
	}

	public Integer getP_Counter() {
		return p_Counter;
	}

	public void setP_Counter(Integer p_Counter) {
		this.p_Counter = p_Counter;
	}

	public Integer getP_Total() {
		return p_Total;
	}

	public void setP_Total(Integer p_Total) {
		this.p_Total = p_Total;
	}

	@Override
	public String toString() {
		return "ProductVO [p_Num=" + p_Num + ", p_Name=" + p_Name + ", p_Price=" + p_Price + ", p_Counter=" + p_Counter
				+ ", p_Total=" + p_Total + "]";
	}

}
