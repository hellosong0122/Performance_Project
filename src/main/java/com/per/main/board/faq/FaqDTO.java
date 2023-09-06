package com.per.main.board.faq;

import java.util.List;

import com.per.main.board.BoardDTO;
import com.per.main.member.MemberDTO;

public class FaqDTO extends BoardDTO{
	
	private List<FaqFileDTO> nfDto;
	
	private MemberDTO memberDto;

	public List<FaqFileDTO> getNfDto() {
		return nfDto;
	}

	public void setNfDto(List<FaqFileDTO> nfDto) {
		this.nfDto = nfDto;
	}

	public MemberDTO getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDTO memberDto) {
		this.memberDto = memberDto;
	}
	
}
