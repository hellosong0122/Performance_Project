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
public class PerformanceController {
	@Autowired
	private PerformanceService performanceService;
	
	@GetMapping("/performance/playList")
	public String playList(Pager pager, Model model) throws Exception {
		List<PerformanceDTO> ar = performanceService.getPlayList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "performance/playList";
	}
	
	@GetMapping("/performance/musicalList")
	public String musicalList(Pager pager, Model model) throws Exception {
		List<PerformanceDTO> ar = performanceService.getMusicalList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "performance/musicalList";
	}
	
	@GetMapping("/performance/detail")
	public String detail(PerformanceDTO performanceDTO, Model model) throws Exception {
		PerformancePlaceDTO placeDTO = performanceService.getDetail(performanceDTO);
		model.addAttribute("dto", placeDTO);
		
		return "performance/detail";
	}
	
	//--------------------------------------
	
	@PostMapping("/admin/perDelete")
	public String setPerDelete(PerformanceDTO performanceDTO) throws Exception {
		int result = performanceService.setPerDelete(performanceDTO);
		
		return "redirect:./perList";
	}
	
	@PostMapping("/admin/placeDelete")
	public String setPlaceDelete(PerformancePlaceDTO placeDTO) throws Exception {
		int result = performanceService.setPlaceDelete(placeDTO);
		
		return "redirect:./placeList";
	}
	
	@GetMapping("/admin/perUpdate")
	public String setPerUpdate() throws Exception {
		int result = performanceService.setPerInfo();
		
		return "redirect:./perList";
	}
	
	@GetMapping("/admin/placeUpdate")
	public String setPlaceUpdate() throws Exception {
		int result = performanceService.setPlaceInfo();
		
		return "redirect:./placeList";
	}

	@GetMapping("/admin/perList")
	public String getPerList(Pager pager, Model model) throws Exception {
		List<PerformanceDTO> ar = performanceService.getPerList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "performance/perList";
	}
	
	@GetMapping("/admin/placeList")
	public String getPlaceList(Pager pager, Model model) throws Exception {
		List<PerformancePlaceDTO> ar = performanceService.getPlaceList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "performance/placeList";
	}
	
	@GetMapping("/admin/perDetail")
	public String getPerDetail(PerformanceDTO performanceDTO, Model model) throws Exception {
		performanceDTO = performanceService.getPerDetail(performanceDTO);
		model.addAttribute("dto", performanceDTO);
		
		return "performance/perDetail";
	}
	
	@GetMapping("/admin/placeDetail")
	public String getPlaceDetail(PerformancePlaceDTO placeDTO, Model model) throws Exception {
		placeDTO = performanceService.getPlaceDetail(placeDTO);
		model.addAttribute("dto", placeDTO);
		
		return "performance/placeDetail";
	}

}
