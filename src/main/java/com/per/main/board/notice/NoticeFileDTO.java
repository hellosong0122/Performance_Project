package com.per.main.board.notice;

import com.per.main.file.FileDTO;

public class NoticeFileDTO extends FileDTO {
	
	private Long notice_file_num;
	private Long notice_num;
	
	public Long getNotice_file_num() {
		return notice_file_num;
	}

	public void setNotice_file_num(Long notice_file_num) {
		this.notice_file_num = notice_file_num;
	}

	public Long getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(Long notice_num) {
		this.notice_num = notice_num;
	}
	
	@Override
	public String toString() {
		return "NoticeFileDTO [notice_file_num=" + notice_file_num + ", notice_num=" + notice_num + "]";
	}

}
