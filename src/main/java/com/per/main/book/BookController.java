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
			// 예매하기 버튼누르기
			// 예메하기 버튼을 누르면 팝업창 오픈
			@GetMapping("/selectPerBtn")
			public String calendarOpen()throws Exception {
			    return "book/calendar";
			}
			//book/calendar
			//팝업창 열리면 calendar.jsp 출력
			@GetMapping("/calendar")
			public String showCalendar() {
			    return "book/calendar";
			}
			

			
			
	}	
	

		
		
	
	

