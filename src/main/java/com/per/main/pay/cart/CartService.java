package com.per.main.pay.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.main.member.MemberDTO;

@Service
public class CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	public int addToCart(CartDTO cartDTO) throws Exception{
		
		return cartDAO.addToCart(cartDTO);
	}

	
	public int removeToCartItem(CartDTO cartDTO) throws Exception{
		return cartDAO.removeToCartItem(cartDTO);
	}
	
	public List<CartDTO> cartlist(MemberDTO memberDTO) throws Exception{
		
		return cartDAO.cartlist(memberDTO);
	}

	



}
