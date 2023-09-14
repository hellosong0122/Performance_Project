package com.per.main.header;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.per.main.member.MemberDTO;
import com.per.main.member.MemberService;
import com.per.utils.Pager;

@Controller
@RequestMapping("/admin/*")
public class HeaderController {

	@Autowired
	private HeaderService headerService;
	
		
	@RequestMapping(value = "headerList", method = RequestMethod.GET)
	public String getList(Pager pager, Model model)throws Exception{
		List<HeaderDTO> ar =  headerService.getList(pager);		
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "header/headerPage";
	}	

	@RequestMapping(value="headerDelete")
	public String setDelete(HeaderDTO headerDTO)throws Exception{
		headerService.setDelete(headerDTO);
		return "redirect:./list";
	}	

	@RequestMapping(value="headerDetail")
	public ModelAndView getDetail(ModelAndView mv, HeaderDTO headerDTO) throws Exception{
		headerDTO = headerService.getDetail(headerDTO);
		mv.addObject("dto", headerDTO);
		mv.setViewName("header/headerDetail");
		
		return mv;
	}	

	@RequestMapping(value="headeraAdd")
	public String setAdd()throws Exception{
			return "header/headerAdd";
	}

	
	@RequestMapping(value="headerAdd", method=RequestMethod.POST)
	public String setAdd(HeaderDTO headerDTO)throws Exception{
		int result = headerService.setAdd(headerDTO);
		System.out.println(result);
		return "redirect:./headerList";
	}


	@RequestMapping(value="headerUpdate", method=RequestMethod.GET)
	public ModelAndView setAdminUpdate(HeaderDTO headerDTO, ModelAndView mv)throws Exception{
		HeaderDTO updateDTO = headerService.getDetail(headerDTO);			
		
		mv.addObject("dto",updateDTO);
		mv.setViewName("header/headerUpdate");		
		
		return mv;
	}
	

	@RequestMapping(value="headerUpdate", method=RequestMethod.POST)
	public String setUpdate(HeaderDTO headerDTO)throws Exception{
		headerService.setUpdate(headerDTO);
		
		return "redirect:./headerList";
	}	

	
}
