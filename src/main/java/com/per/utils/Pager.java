package com.per.utils;

public class Pager {
	private Long page;
	//한 페이지에 보여질 data(row)의 갯수
	private Long perPage;
	//총 페이지의 갯수
	private Long totalPage;
	
	private Long startRow;
	private Long lastRow;
	
	private Long startNum;
	private Long lastNum;
	
	//이전 블록 활성화
	private boolean pre;
	//다음 블록 활성화
	private boolean next;
	
	//검색
	private String kind;
	private String search;
	
	
	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search==null) {
			this.search = "";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	//startRow, lastRow를 계산하는 메소드
	public void makeRowNum() {
		this.startRow = (this.getPage()-1)*this.getPerPage()+1;
		this.lastRow = this.page*this.getPerPage();
	}
	
	public void makePageNum(Long total) {
		//전체 갯수로 전체 페이지 수 구하기
		this.totalPage = total / this.getPerPage();
		if(total%this.getPerPage()!=0) {
			this.totalPage++;
		}
		
		//전체 페이지 수로 전체 block 수 구하기
		long perBlock = 10;
		
		long totalBlock = this.totalPage/perBlock;
		if(this.totalPage%perBlock!=0) {
			totalBlock++;
		}
		
		//현재 페이지 번호로 block 번호 구하기
		long curBlock = this.getPage()/perBlock;
		if(this.getPage()%perBlock!=0) {
			curBlock++;
		}
		
		//현재 block 번호의 시작 번호와 끝 번호 구하기
		this.startNum = (curBlock-1)*perBlock+1;
		this.lastNum = curBlock*perBlock;
		
		//이전 블록 활성화 여부
		if(curBlock>1) {
			this.pre = true;
		}
		//다음 블록 활성화 여부
		if(curBlock<totalBlock) {
			this.next = true;
		}
		//현재 블록이 마지막 블록일 때
		if(!this.next) {
			this.lastNum = totalPage;
		}
	}
	
	public Long getPage() {
		if(this.page==null) {
			this.page = 1L;
		}
		return page;
	}
	public void setPage(Long page) {
		this.page = page;
	}
	public Long getPerPage() {
		if(this.perPage==null) {
			this.perPage = 10L;
		}
		return perPage;
	}
	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	public Long getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getLastRow() {
		return lastRow;
	}
	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}
	public Long getStartNum() {
		return startNum;
	}
	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}
	public Long getLastNum() {
		return lastNum;
	}
	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}
	public boolean isPre() {
		return pre;
	}
	public void setPre(boolean pre) {
		this.pre = pre;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
}
