 package com.per.main.per;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.per.utils.Pager;

@Controller
@RequestMapping("/performance/*")
public class PerformanceController {
	@Autowired
	private PerformanceService performanceService;
	
	@GetMapping("detail")
	public String detail(PerformanceDTO performanceDTO, Model model) throws Exception {
		PerformancePlaceDTO placeDTO = performanceService.getDetail(performanceDTO);
		model.addAttribute("dto", placeDTO);
		
		return "/performance/detail";
	}
	
	//--------------------------------------
	
	@PostMapping("perDelete")
	public String setPerDelete(PerformanceDTO performanceDTO) throws Exception {
		int result = performanceService.setPerDelete(performanceDTO);
		
		return "redirect:./perList";
	}
	
	@PostMapping("placeDelete")
	public String setPlaceDelete(PerformancePlaceDTO placeDTO) throws Exception {
		int result = performanceService.setPlaceDelete(placeDTO);
		
		return "redirect:./placeList";
	}
	
	@GetMapping("perUpdate")
	public String setPerUpdate() throws Exception {
		int result = performanceService.setPerInfo();
		
		return "redirect:./perList";
	}
	
	@GetMapping("placeUpdate")
	public String setPlaceUpdate() throws Exception {
		int result = performanceService.setPlaceInfo();
		
		return "redirect:./placeList";
	}

	@GetMapping("perList")
	public String getPerList(Pager pager, Model model) throws Exception {
		List<PerformanceDTO> ar = performanceService.getPerList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "/performance/perList";
	}
	
	@GetMapping("placeList")
	public String getPlaceList(Pager pager, Model model) throws Exception {
		List<PerformancePlaceDTO> ar = performanceService.getPlaceList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "/performance/placeList";
	}
	
	@GetMapping("perDetail")
	public String getPerDetail(PerformanceDTO performanceDTO, Model model) throws Exception {
		performanceDTO = performanceService.getPerDetail(performanceDTO);
		model.addAttribute("dto", performanceDTO);
		
		return "performance/perDetail";
	}
	
	@GetMapping("placeDetail")
	public String getPlaceDetail(PerformancePlaceDTO placeDTO, Model model) throws Exception {
		placeDTO = performanceService.getPlaceDetail(placeDTO);
		model.addAttribute("dto", placeDTO);
		
		return "/performance/placeDetail";
	}

}
