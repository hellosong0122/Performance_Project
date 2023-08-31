package com.per.main.book;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.per.main.per.PerformanceDTO;
import com.per.main.per.PerformancePlaceDTO;
import com.per.main.per.PerformanceService;
import com.per.utils.Pager;

	@Controller
	@RequestMapping("/book/*")
	public class BookController {	
		
		@Autowired	
		private BookService bookService;


			//공연목록보기
			@GetMapping("/list")
			public String getPerList(Model model)throws Exception{
				List<PerformanceDTO> per = bookService.getPerList();
				model.addAttribute("list", per);
			   return "book/list";
			//	return "calendar/calendar";
			}
			
			
//			@PostMapping("/list")
//			public String getPerList(BookDTO bookDTO, Model model, HttpSession session)throws Exception{
//				int result = bookService.getPerList(bookDTO, model, session);
//				return	"calendar/calendar";
//			}
		 
			
			
	}	
	

		
		
	
	

