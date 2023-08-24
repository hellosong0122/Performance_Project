package com.per.main.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="join",method=RequestMethod.GET)
	public void setJoin()throws Exception{

	}
	
	@RequestMapping(value="join",method=RequestMethod.POST)
	public String setJoin(MemberDTO memberDTO)throws Exception{
		int result = memberService.setJoin(memberDTO);
		
		return "redirect:../";
	}
	
}