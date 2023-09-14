package com.per.main.pay.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.per.main.member.MemberDTO;
import com.per.main.pay.product.ProductDTO;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	
	
	
	
	@ResponseBody
	@PostMapping("remove")
	public String removeToCartItem(@ModelAttribute CartDTO cartDTO,HttpSession session, Model model)throws Exception{
		int result = 0;
		System.out.println("delete :" + cartDTO.toString());
		
		if(cartDTO !=null) {
			System.out.println("cartdto : " + cartDTO);
			result = cartService.removeToCartItem(cartDTO);	
		}
		return "commons/ajaxResult";
	}
	
	@ResponseBody
	@RequestMapping(value = "add" ,method = RequestMethod.POST)
	public String addToCart(MemberDTO memberDTO,@ModelAttribute CartDTO cartDTO,HttpSession session, Model model)throws Exception{
		int result = 0 ;
		System.out.println("cartDTO tostring :" +cartDTO.toString());
		memberDTO = (MemberDTO) session.getAttribute("member");
		System.out.println("memberDTO : "+ memberDTO.getMember_num());
		cartDTO.setMember_num(memberDTO.getMember_num());
		if(cartDTO !=null) {
			System.out.println("cartdto : " + cartDTO);
			result = cartService.addToCart(cartDTO);	
		}
		
		return "commons/ajaxResult";
	}
	
	@GetMapping("mycart")
	public String myCart(ProductDTO productDTO,MemberDTO memberDTO,HttpSession session, Model model)throws Exception{
		
		memberDTO = (MemberDTO) session.getAttribute("member");
		
		List<CartDTO> list =  cartService.cartlist(memberDTO);
		
		model.addAttribute("list", list);
		model.addAttribute("member",memberDTO);
		return "cart/mycart";
	}
}
