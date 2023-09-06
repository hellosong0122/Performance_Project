package com.per.main.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public int setJoin(MemberDTO memberDTO)throws Exception{
		return memberDAO.setJoin(memberDTO);
	}
	
	public MemberDTO getId(MemberDTO memberDTO)throws Exception{
		return memberDAO.getId(memberDTO);
	}
	
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
	}
	
	public MemberDTO findId(MemberDTO memberDTO)throws Exception{
		return memberDAO.findId(memberDTO);
	}
	
	public MemberDTO getUserInfo(MemberDTO memberDTO) throws Exception{
		return memberDAO.getUserInfo(memberDTO);
	}
}
