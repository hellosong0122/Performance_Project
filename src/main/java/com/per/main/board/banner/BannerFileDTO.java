package com.per.main.board.banner;

import com.per.main.file.FileDTO;

public class BannerFileDTO extends FileDTO {
	
	private Long banner_file_num;
	private Long banner_num;
	
	public Long getBanner_file_num() {
		return banner_file_num;
	}
	public void setBanner_file_num(Long banner_file_num) {
		this.banner_file_num = banner_file_num;
	}
	public Long getBanner_num() {
		return banner_num;
	}
	public void setBanner_num(Long banner_num) {
		this.banner_num = banner_num;
	}
	
	@Override
	public String toString() {
		return "BannerFileDTO [banner_file_num=" + banner_file_num + ", banner_num=" + banner_num + "]";
	}
	
	

}
