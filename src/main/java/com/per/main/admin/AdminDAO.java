package com.per.main.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.main.member.MemberDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.per.main.admin.AdminDAO.";
	
	/* admin */
	public List<MemberDTO> getAdminList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getAdminList");		
	}
	
	public MemberDTO getAdminDetail(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getAdminDetail", memberDTO);
	}
	
	public MemberDTO getAdminUpdateDetail(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getAdminUpdateDetail", memberDTO);
	}
	
	public int setAdminAdd(MemberDTO memberDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setAdminAdd", memberDTO);
	}
	public int setAdminUpdate(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setAdminUpdate", memberDTO);
	}
	
	public int setAdminDelete(MemberDTO memberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setAdminDelete", memberDTO);
	}	
	
	/* member */
	public List<MemberDTO> getMemberList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMemberList");		
	}
	
	public MemberDTO getMemberDetail(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getMemberDetail", memberDTO);
	}
	
	public int setMemberAdd(MemberDTO memberDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setMemberAdd", memberDTO);
	}
	
	public int setMemberUpdate(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setMemberUpdate", memberDTO);
	}
	
	public int setMemberDelete(MemberDTO memberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setMemberDelete", memberDTO);
	}	
	
}
