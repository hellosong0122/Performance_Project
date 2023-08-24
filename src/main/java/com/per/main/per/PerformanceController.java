 package com.per.main.per;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.per.utils.Pager;

@Controller
@RequestMapping("/performance/*")
public class PerformanceController {
	@Autowired
	private PerformanceService performanceService;
	
	@GetMapping("main")
	public String main() throws Exception {
		return "performance/main";
	}
	
	@GetMapping("perList")
	public String getPerList(Pager pager, Model model) throws Exception {
		List<PerformanceDTO> ar = performanceService.getPerList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "/performance/perList";
	}
	
	@GetMapping("perAdd")
	public String setPerAdd() throws Exception {
		int result = performanceService.setPerAdd();
		
		return "redirect:./perList";
	}
	
	@GetMapping("placeList")
	public String getPlaceList(Pager pager, Model model) throws Exception {
		List<PerformancePlaceDTO> ar = performanceService.getPlaceList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "/performance/placeList";
	}
	
	@GetMapping("placeAdd")
	public String setPlaceAdd() throws Exception {
		int result = performanceService.setPlaceAdd();
		
		return "redirect:./placeList";
	}
}
