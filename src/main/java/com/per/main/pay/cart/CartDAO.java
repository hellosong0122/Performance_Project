package com.per.main.pay.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.main.member.MemberDTO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.per.main.pay.cart.CartDAO.";
	
	public int addToCart(CartDTO cartDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"addToCart",cartDTO);
	}

	public List<CartDTO> cartlist(MemberDTO memberDTO) throws Exception {

		return sqlSession.selectList(NAMESPACE+"cartlist", memberDTO);
	}

	public int removeToCartItem(CartDTO cartDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"removeToCartItem", cartDTO);
	}
	
	
	

}
