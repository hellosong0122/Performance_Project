package com.per.main.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.per.main.member.MemberDAO.";

	public int setJoin(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setJoin", memberDTO);
	}

	public MemberDTO getId(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getId", memberDTO);
	}

	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getLogin", memberDTO);
	}

	public int setMemberUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setMemberUpdate", memberDTO);
	}

	public MemberDTO findEmail(String email) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "findEmail", email);
	}

	// 삭제 ㄴ	
	public MemberDTO getUserInfo(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getUserInfo", memberDTO);
	}

}
