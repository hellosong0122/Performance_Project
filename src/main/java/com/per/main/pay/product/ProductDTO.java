package com.per.main.pay.product;

import java.sql.Date;
import java.util.List;

import com.per.main.dto.ImageDTO;

public class ProductDTO {
	private Long P_Num;
	private String P_Name;
	private Integer P_Price;

	private List<ImageDTO> P_Image;

	private Date P_Regdate;
	private Integer P_Count;
	private String P_Writer;
	
	

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



	public Integer getP_Price() {
		return P_Price;
	}



	public void setP_Price(Integer p_Price) {
		P_Price = p_Price;
	}



	public List<ImageDTO> getP_Image() {
		return P_Image;
	}



	public void setP_Image(List<ImageDTO> p_Image) {
		P_Image = p_Image;
	}



	public Date getP_Regdate() {
		return P_Regdate;
	}



	public void setP_Regdate(Date p_Regdate) {
		P_Regdate = p_Regdate;
	}



	public Integer getP_Count() {
		return P_Count;
	}



	public void setP_Count(Integer p_Count) {
		P_Count = p_Count;
	}



	public String getP_Writer() {
		return P_Writer;
	}



	public void setP_Writer(String p_Writer) {
		P_Writer = p_Writer;
	}



	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

}
