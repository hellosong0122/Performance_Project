package com.per.main.board.faq;

import com.per.main.file.FileDTO;

public class FaqFileDTO extends FileDTO {
	
	private Long faq_file_num;
	private Long faq_num;
	
	public Long getFaq_file_num() {
		return faq_file_num;
	}

	public void setFaq_file_num(Long faq_file_num) {
		this.faq_file_num = faq_file_num;
	}

	public Long getFaq_num() {
		return faq_num;
	}

	public void setFaq_num(Long faq_num) {
		this.faq_num = faq_num;
	}
	
	@Override
	public String toString() {
		return "FaqFileDTO [faq_file_num=" + faq_file_num + ", faq_num=" + faq_num + "]";
	}

}
