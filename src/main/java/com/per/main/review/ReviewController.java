package com.per.main.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@PostMapping("add")
	public String setAdd(ReviewDTO reviewDTO, Model model) throws Exception {
		int result = reviewService.setAdd(reviewDTO);
		model.addAttribute("result", result);
		
		return "/commons/ajaxResult";
	}
}
