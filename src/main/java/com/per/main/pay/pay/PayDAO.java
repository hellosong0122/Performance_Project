package com.per.main.pay.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.main.member.MemberDTO;


@Repository
public class PayDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.per.main.pay.pay.PayDAO.";

	public int insertPayData(ProductOrderDTO orderDTO) throws Exception {
		System.out.println("step2");
		System.out.println("test model : "+ orderDTO.toString() );
		return sqlSession.insert(NAMESPACE+"insertPayData", orderDTO);
	}


}
