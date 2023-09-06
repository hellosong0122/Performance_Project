package com.per.main.review;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.per.utils.Pager;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	
	@PostMapping("good")
	public String setUpdateGood(ReviewDTO reviewDTO, Model model) throws Exception {
		int result = reviewService.setUpdateGood(reviewDTO);
		model.addAttribute("result", result);
		
		return "commons/ajaxResult";
	}
	
	//------------------------------
	@GetMapping("list")
	public String getList(ReviewDTO reviewDTO, Pager pager, Model model) throws Exception {
		pager.setPerPage(5L);
		List<ReviewDTO> ar = reviewService.getList(reviewDTO, pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		
		return "review/list";
	}
	
	@PostMapping("add")
	public String setAdd(ReviewDTO reviewDTO, Model model) throws Exception {
		int result = reviewService.setAdd(reviewDTO);
		model.addAttribute("result", result);
		
		return "commons/ajaxResult";
	}
	
	@PostMapping("delete")
	public String setDelete(ReviewDTO reviewDTO, Model model) throws Exception {
		int result = reviewService.setDelete(reviewDTO);
		model.addAttribute("result", result);
		
		return "commons/ajaxResult";
	}
	
	@PostMapping("update")
	public String setUpdate(ReviewDTO reviewDTO, Model model) throws Exception {
		int result = reviewService.setUpdate(reviewDTO);
		model.addAttribute("result", result);
		
		return "commons/ajaxResult";
	}
}
