package com.per.main.member;

import java.sql.Date;

public class MemberDTO {

	private Long member_num;
	private String name;
	private String id;
	private String pw;
	private String email;
	private String phone;
	private Date birth;
	private String address;
	private Boolean auth;
	private Boolean marketing;
	public Long getMember_num() {
		return member_num;
	}
	public void setMemberNum(Long member_num) {
		this.member_num = member_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Boolean getAuth() {
		return auth;
	}
	public void setAuth(Boolean auth) {
		this.auth = auth;
	}
	public Boolean getMarketing() {
		return marketing;
	}
	public void setMarketing(Boolean marketing) {
		this.marketing = marketing;
	}
	

}