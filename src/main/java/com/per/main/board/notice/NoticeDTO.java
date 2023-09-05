package com.per.main.board.notice;

import java.util.List;

import com.per.main.board.BoardDTO;
import com.per.main.member.MemberDTO;

public class NoticeDTO extends BoardDTO{
	
	private List<NoticeFileDTO> nfDto;
	
	private MemberDTO memberDto;

	public List<NoticeFileDTO> getNfDto() {
		return nfDto;
	}

	public void setNfDto(List<NoticeFileDTO> nfDto) {
		this.nfDto = nfDto;
	}

	public MemberDTO getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDTO memberDto) {
		this.memberDto = memberDto;
	}
	
}
