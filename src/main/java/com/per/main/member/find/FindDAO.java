package com.per.main.member.find;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.main.member.MemberDTO;

@Repository
public class FindDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.per.main.member.find.FindDAO.";
	
	public MemberDTO getMemberId(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getMemberId", memberDTO);
	}
	
	public MemberDTO findPw(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"findPw", memberDTO);
	}
	
	public int updatePw(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updatePw", memberDTO);
	}
}
