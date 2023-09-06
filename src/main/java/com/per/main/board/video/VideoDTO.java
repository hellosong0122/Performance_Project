package com.per.main.board.video;

import java.util.List;

import com.per.main.board.BoardDTO;
import com.per.main.member.MemberDTO;

public class VideoDTO extends BoardDTO{
	
	private List<VideoFileDTO> nfDto;
	
	private MemberDTO memberDto;

	public List<VideoFileDTO> getNfDto() {
		return nfDto;
	}

	public void setNfDto(List<VideoFileDTO> nfDto) {
		this.nfDto = nfDto;
	}

	public MemberDTO getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDTO memberDto) {
		this.memberDto = memberDto;
	}
	
}
