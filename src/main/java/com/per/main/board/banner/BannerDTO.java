package com.per.main.board.banner;

import java.util.List;

import com.per.main.board.BoardDTO;
import com.per.main.member.MemberDTO;

public class BannerDTO extends BoardDTO{
	
	private List<BannerFileDTO> nfDto;
	
	private MemberDTO memberDto;

	public List<BannerFileDTO> getNfDto() {
		return nfDto;
	}

	public void setNfDto(List<BannerFileDTO> nfDto) {
		this.nfDto = nfDto;
	}

	public MemberDTO getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDTO memberDto) {
		this.memberDto = memberDto;
	}
	
}
