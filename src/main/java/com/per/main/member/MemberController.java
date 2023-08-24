package com.per.main.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value="idCheck", method=RequestMethod.GET)
	public String getId(MemberDTO memberDTO,Model model)throws Exception{
		memberDTO = memberService.getId(memberDTO);
		
		int result = 0;
		
		if(memberDTO==null) {
			result = 1;
		}
		
		model.addAttribute("result", result);		
		
		return "commons/ajaxResult";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void getLogin()throws Exception{	
		
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String getLogin(MemberDTO memberDTO, HttpSession session)throws Exception{
		memberDTO = memberService.getLogin(memberDTO);			
		
		if(memberDTO != null){
			session.setAttribute("member", memberDTO);				
		}
		
		return "redirect:../";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String getLogout(HttpSession session)throws Exception{
		session.invalidate();
		
		return "redirect:../";
	}
	
	
}