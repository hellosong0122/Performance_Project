package com.per.main.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.per.main.member.MemberDTO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

		// 관리자 리스트
		@RequestMapping(value = "adminPage", method = RequestMethod.GET)
			public String getAdminList(Model model) throws Exception {
			List<MemberDTO> ar = adminService.getAdminList();
			model.addAttribute("list", ar);		
			
			return "admin/adminPage";		
		}
	
		//관리자 상세
		@RequestMapping(value="adminDetail")
		public ModelAndView getAdminDetail(ModelAndView mv, MemberDTO memberDTO)throws Exception{
			memberDTO = adminService.getAdminDetail(memberDTO);
			mv.addObject("dto", memberDTO);
			mv.setViewName("admin/adminDetail");
			
			return mv;
		}
		@RequestMapping(value="adminAdd")
		public void setAdminAdd()throws Exception{
				
		}
		
		@RequestMapping(value="adminAdd", method=RequestMethod.POST)
		public String setAdminAdd(MemberDTO memberDTO)throws Exception{
			int result = adminService.setAdminAdd(memberDTO);
			return "redirect:./adminPage";
		}
		
		//관리자 수정
		@RequestMapping(value="adminUpdate", method=RequestMethod.GET)
		public ModelAndView setAdminUpdate(MemberDTO memberDTO, ModelAndView mv)throws Exception{
			MemberDTO updateDTO = adminService.getAdminUpdateDetail(memberDTO);			
			
			mv.addObject("dto",updateDTO);
			mv.setViewName("admin/adminUpdate");		
			
			return mv;
		}
		
		//관리자 수정
		@RequestMapping(value="adminUpdate", method=RequestMethod.POST)
		public String setUpdate(MemberDTO memberDTO)throws Exception{
			adminService.setAdminUpdate(memberDTO);
			
			return "redirect:./adminPage";
		}	
		
		//관리자 삭제
		@RequestMapping(value="adminDelete")
		public String setAdminDelete(MemberDTO memberDTO)throws Exception{
			adminService.setAdminDelete(memberDTO);
			return "redirect:./adminPage";
		}		
		
		//회원리스트
		@RequestMapping(value ="memberPage", method = RequestMethod.GET)
		public String getMemberList(Model model) throws Exception {
		List<MemberDTO> ar = adminService.getMemberList();
		model.addAttribute("list", ar);		
		
		return "admin/memberPage";		
		}
		
		//회원상세
		@RequestMapping(value="memberDetail")
		public ModelAndView getMemberDetail(ModelAndView mv, MemberDTO memberDTO) throws Exception{
			memberDTO = adminService.getMemberDetail(memberDTO);
			System.out.println(memberDTO.getMemberNum());
			mv.addObject("dto", memberDTO);
			mv.setViewName("admin/memberDetail");
			
			return mv;
		}
		
		//회원등록
		@RequestMapping(value="memberAdd", method=RequestMethod.GET)
		public void setMemberAdd()throws Exception{			
		}
		
		//회원등록
		@RequestMapping(value="memberAdd", method=RequestMethod.POST)
		public String setMemberAdd(MemberDTO memberDTO)throws Exception{
			int result = adminService.setMemberAdd(memberDTO);
			return "redirect:./memberPage";
		}
		
		//회원수정
		@RequestMapping(value="memberUpdate", method=RequestMethod.GET)
		public ModelAndView setMemberUpdate(MemberDTO memberDTO, ModelAndView mv)throws Exception{
			MemberDTO updateDTO = adminService.getMemberDetail(memberDTO);			
			
			mv.addObject("dto",updateDTO);
			mv.setViewName("/admin/memberUpdate");		
			
			return mv;
		}
		
		//회원수정
		@RequestMapping(value="memberUpdate", method=RequestMethod.POST)
		public String setMemberUpdate(MemberDTO memberDTO)throws Exception{
			adminService.setMemberUpdate(memberDTO);
			
			return "redirect:./memberPage";
		}	
		
		//회원삭제
		@RequestMapping(value="memberDelete")
		public String setMemberDelete(MemberDTO memberDTO)throws Exception{
			adminService.setMemberDelete(memberDTO);
			return "redirect:./memberPage";
		}	
		
				
	}

