package com.per.main.header;

import oracle.sql.DATE;

public class HeaderDTO {
	
	private Long header_num;
	private DATE regdate;
	private String writer;
	private String dlete_type;
	private Long order_num;

	public Long getHeader_num() {
		return header_num;
	}
	public void setHeader_num(Long header_num) {
		this.header_num = header_num;
	}
	public DATE getRegdate() {
		return regdate;
	}
	public void setRegdate(DATE regdate) {
		this.regdate = regdate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDlete_type() {
		return dlete_type;
	}
	public void setDlete_type(String dlete_type) {
		this.dlete_type = dlete_type;
	}
	public Long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Long order_num) {
		this.order_num = order_num;
	}	
	
	
}
