package com.per.main.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.main.member.MemberDTO;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	public List<MemberDTO> getAdminList()throws Exception{
		return adminDAO.getAdminList();
	}
	
	public MemberDTO getAdminDetail(MemberDTO memberDTO)throws Exception{
		return adminDAO.getAdminDetail(memberDTO);
	}
	
	public int setAdminAdd(MemberDTO memberDTO)throws Exception{
		return adminDAO.setAdminAdd(memberDTO);
	}
	
	public MemberDTO getAdminUpdateDetail(MemberDTO memberDTO)throws Exception{
		return adminDAO.getAdminDetail(memberDTO);
	}
	
	public int setAdminUpdate(MemberDTO memberDTO)throws Exception{
		return adminDAO.setAdminUpdate(memberDTO);
	}
	
	public int setAdminDelete(MemberDTO memberDTO)throws Exception{
		return adminDAO.setAdminDelete(memberDTO);
	}
	
	/* member */
	public List<MemberDTO> getMemberList()throws Exception{
		return adminDAO.getMemberList();	
	}	
	
	public MemberDTO getMemberDetail(MemberDTO memberDTO)throws Exception{
		return adminDAO.getMemberDetail(memberDTO);
	}
	
	public int setMemberAdd(MemberDTO memberDTO)throws Exception{
		return adminDAO.setMemberAdd(memberDTO);
	}
	
	public int setMemberUpdate(MemberDTO memberDTO)throws Exception{
		return adminDAO.setMemberUpdate(memberDTO);
	}
	
	public int setMemberDelete(MemberDTO memberDTO)throws Exception{
		return adminDAO.setMemberDelete(memberDTO);
	}
	

}
