package com.per.main.pay.pay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.main.member.MemberDTO;


public class PayDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.per.main.pay.pay.PayDAO.";

	public int insertPayData(ProductOrderDTO orderDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"insertPayData", orderDTO);
	}

	

}
