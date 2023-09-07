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
	private Integer auth;
	private Integer marketing;
	private Long role;

	
	
	
	public Long getMember_num() {
		return member_num;
	}

	public void setMember_num(Long member_num) {
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

	public Integer getAuth() {
		return auth;
	}

	public void setAuth(Integer auth) {
		this.auth = auth;
	}

	public Integer getMarketing() {
		return marketing;
	}

	public void setMarketing(Integer marketing) {
		this.marketing = marketing;
	}

	public Long getRole() {
		return role;
	}

	public void setRole(Long role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "MemberDTO [member_num=" + member_num + ", name=" + name + ", id=" + id + ", pw=" + pw + ", email="
				+ email + ", phone=" + phone + ", birth=" + birth + ", address=" + address + ", auth=" + auth
				+ ", marketing=" + marketing + ", role=" + role + "]";
	}



}