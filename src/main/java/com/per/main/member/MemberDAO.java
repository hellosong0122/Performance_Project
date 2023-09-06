package com.per.main.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.per.main.member.MemberDAO.";
	
	public int setJoin(MemberDTO memberDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setJoin", memberDTO);
	}
	
	public MemberDTO getId(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getId", memberDTO);
	}
		
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getLogin", memberDTO);
	}
	
	public MemberDTO findId(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"findId", memberDTO);
	}
	
	public MemberDTO getUserInfo(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getUserInfo", memberDTO);
	}

}
