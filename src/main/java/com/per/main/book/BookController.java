package com.per.main.book;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.per.main.board.BoardDTO;
import com.per.main.per.PerformanceService;
import com.per.utils.Pager;

	@Controller
	@RequestMapping("/book/*")
	public class BookController {	
		
		@Autowired	
		private BookService bookService;
		@Autowired
		private PerformanceService performanceService;
		

			// 예매하기 버튼누르기
			// 예메하기 버튼을 누르면 팝업창 오픈
			@GetMapping("/selectPerBtn")
			public String calendarOpen()throws Exception {
			    return "book/calendar";
			}
			//book/calendar
			//팝업창 열리면 calendar.jsp 출력
			@GetMapping("/calendar")
			//calendar로 get요청왔을 때 이 메서드로 매핑.
			public String showCalendar()throws Exception {
			    return "book/calendar";
			}
			
			
			@GetMapping("/selectSeat")
			public String seatOpen()throws Exception{
			return "book/seat";
			}
			
			
			@GetMapping("/seat")
			public String showSeat(Model model)throws Exception {
				List<SeatDTO> arr = bookService.getSeat();
				model.addAttribute("list", arr);
			    return "book/seat";
			}
			

			
			
			//check  -> seat에서 넘어가는쪽
			@GetMapping("/checkBeforePay")
			public String check()throws Exception{
				return "book/checkBeforePay";
			}
			
			
			
			//@RequestMapping(value="/checkBeforePay")
			@PostMapping("/practice")//form 에서 연결된곳
			public String setBook(BookDTO bookDTO, Model model)throws Exception{
				bookService.setBook(bookDTO);
				//return "book/practice";
				return "redirect:../detail";
			}
			
			
			
			
		
	}	
	

		
		
	
	

