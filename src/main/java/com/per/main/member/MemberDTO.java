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
   private String marketing;
   private String sns;
   private String role;
   private Date regDate;
   private String deleteType;
   
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
	public String getMarketing() {
		return marketing;
	}
	public void setMarketing(String marketing) {
		this.marketing = marketing;
	}
	public String getSns() {
		return sns;
	}
	public void setSns(String sns) {
		this.sns = sns;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getDeleteType() {
		return deleteType;
	}
	public void setDeleteType(String deleteType) {
		this.deleteType = deleteType;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [member_num=" + member_num + ", name=" + name + ", id=" + id + ", pw=" + pw + ", email=" + email
				+ ", phone=" + phone + ", birth=" + birth + ", address=" + address + ", marketing=" + marketing + ", sns="
				+ sns + ", role=" + role + ", regDate=" + regDate + ", deleteType=" + deleteType + "]";
	}   
		
}