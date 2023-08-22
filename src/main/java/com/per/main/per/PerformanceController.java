 package com.per.main.per;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/performance/*")
public class PerformanceController {
	@Autowired
	private PerformanceService performanceService;
	
	@GetMapping("add")
	public String setAdd() throws Exception {
		performanceService.setAdd();
		
		return "/performance/perList";
	}
}
