package com.per.main.member.find;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.main.member.MemberDTO;

@Service
public class FindService {

	@Autowired
	private FindDAO findDAO;
	
	public MemberDTO getMemberId(MemberDTO memberDTO) throws Exception{
		return findDAO.getMemberId(memberDTO);
	}
	
	public MemberDTO findPw(MemberDTO memberDTO)throws Exception{
		return findDAO.findPw(memberDTO);
	}
	
	public int updatePw(MemberDTO memberDTO)throws Exception{
		return findDAO.updatePw(memberDTO);
	}
}
