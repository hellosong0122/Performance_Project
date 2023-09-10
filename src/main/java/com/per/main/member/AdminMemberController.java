package com.per.main.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.per.main.member.MemberDTO;
import com.per.utils.Pager;

@Controller
@RequestMapping("/member/admin/*")
public class AdminMemberController {
	
	@Autowired
	private MemberService memberService;
	
	//어드민 회원관리 페이지 리스트
	@RequestMapping(value = "adminList", method = RequestMethod.GET)
	public String getAdminList(Pager pager, Model model)throws Exception{
		List<MemberDTO> ar =  memberService.getAdminList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "member/admin/adminPage";
	}
	
	//일반회원 관리 페이지 리스트
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList(Pager pager, Model model)throws Exception{
		List<MemberDTO> ar =  memberService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "member/admin/memberPage";
	}
	
	//회원삭제
	@RequestMapping(value="memberDelete")
	public String setMemberDelete(MemberDTO memberDTO)throws Exception{
		memberService.setDelete(memberDTO);
		return "redirect:./list";
	}
	
	//관리자 삭제
	@RequestMapping(value="adminDelete")
	public String setAdminDelete(MemberDTO memberDTO)throws Exception{
		memberService.setDelete(memberDTO);
		return "redirect:./adminList";
	}		
	
	//회원상세
	@RequestMapping(value="memberDetail")
	public ModelAndView getMemberDetail(ModelAndView mv, MemberDTO memberDTO) throws Exception{
		memberDTO = memberService.getDetail(memberDTO);
		mv.addObject("dto", memberDTO);
		mv.setViewName("member/admin/memberDetail");
		
		return mv;
	}
	
	//관리자상세
	@RequestMapping(value="adminDetail")
	public ModelAndView getAdminDetail(ModelAndView mv, MemberDTO memberDTO) throws Exception{
			memberDTO = memberService.getDetail(memberDTO);
			mv.addObject("dto", memberDTO);
			mv.setViewName("member/admin/adminDetail");
			
			return mv;
	}
		//관리자등록
		@RequestMapping(value="adminAdd")
		public void setAdminAdd()throws Exception{
				
		}
		
		//관리자등록
		@RequestMapping(value="adminAdd", method=RequestMethod.POST)
		public String setAdminAdd(MemberDTO memberDTO)throws Exception{
			int result = memberService.setAdminAdd(memberDTO);
			System.out.println(result);
			return "redirect:./adminList";
		}
		
		//회원등록
		@RequestMapping(value="memberAdd", method=RequestMethod.GET)
		public void setMemberAdd()throws Exception{			
		}
		
		//회원등록
		@RequestMapping(value="memberAdd", method=RequestMethod.POST)
		public String setMemberAdd(MemberDTO memberDTO)throws Exception{
			int result = memberService.setJoin(memberDTO);
			return "redirect:./list";
		}
		
		//관리자 수정
		@RequestMapping(value="adminUpdate", method=RequestMethod.GET)
		public ModelAndView setAdminUpdate(MemberDTO memberDTO, ModelAndView mv)throws Exception{
			MemberDTO updateDTO = memberService.getDetail(memberDTO);			
			
			mv.addObject("dto",updateDTO);
			mv.setViewName("member/admin/adminUpdate");		
			
			return mv;
		}
		
		//관리자 수정
		@RequestMapping(value="adminUpdate", method=RequestMethod.POST)
		public String setUpdate(MemberDTO memberDTO)throws Exception{
			memberService.setAdminUpdate(memberDTO);
			
			return "redirect:./adminList";
		}	
		
		//회원수정
		@RequestMapping(value="memberUpdate", method=RequestMethod.GET)
		public ModelAndView setMemberUpdate(MemberDTO memberDTO, ModelAndView mv)throws Exception{
			MemberDTO updateDTO = memberService.getDetail(memberDTO);			
			
			mv.addObject("dto",updateDTO);
			mv.setViewName("member/admin/memberUpdate");		
			
			return mv;
		}
		
		//회원수정
		@RequestMapping(value="memberUpdate", method=RequestMethod.POST)
		public String setMemberUpdate(MemberDTO memberDTO)throws Exception{
			memberService.setMemberUpdate(memberDTO);
			
			return "redirect:./list";
		}	
		

	}
				


