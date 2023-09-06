package com.per.main.board;

import java.sql.Date;

public class BoardDTO {
	
	private Long num;
	private Long member_num;
	private String title;
	private String content;
	private Date regDate;
	private Date updateDate;
	private Character deleteType;
	private Long hit;	
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Long getMember_num() {
		return member_num;
	}
	public void setMember_num(Long member_num) {
		this.member_num = member_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public Character getDeleteType() {
		return deleteType;
	}
	public void setDeleteType(Character deleteType) {
		this.deleteType = deleteType;
	}
	public Long getHit() {
		return hit;
	}
	public void setHit(Long hit) {
		this.hit = hit;
	}

}
