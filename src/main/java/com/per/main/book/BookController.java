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

import com.per.main.per.PerformanceDTO;
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
			public String showSeat()throws Exception {
			    return "book/seat";
			}
			
			@GetMapping("/practice")
			public String showPractice()throws Exception {
			    return "book/practice";
			}
			
			
//			@GetMapping("/seat")
//			public String showSeat(Model model) throws Exception {
//			    PerformanceDTO performanceDTO = performanceService.getPrice();
//			    // PerformanceDTO에서 pcseguidance 값을 가져와서 모델에 추가
//			    model.addAttribute("performancePrice", performanceDTO.getPcseguidance());
//			    return "book/seat";
//			}
			
			@GetMapping("/checkBeforePay")
			public String check()throws Exception{
				return "book/checkBeforePay";
			}
			
//			@RequestMapping("/seat")
//			public String getPrice(Model model, PerformanceDTO performanceDTO)throws Exception{
//				performanceDTO=performanceService.getPrice(performanceDTO);
//				//모델에 공연가격 데이터를 뷰로 전달
//				model.addAttribute("performancePrice", performanceDTO);
//				 // seat.jsp로 이동
//			    return "seat"; 
//				}
	
			
//			//detail form에서 전달된 값 받기
//			@RequestMapping("/checkBeforePay")
//			public String getPerInfo(@RequestBody BookDTO bookdto, Model model, HttpSession session) throws Exception{
//				//dto 객체를 세션에 추가
//				session.setAttribute("bookDTO", bookdto);
//				
//				  System.out.println("공연번호: " + bookdto.getPerformance_num());
//				  System.out.println("공연명: " + bookdto.getPrfnm());
//				  System.out.println("ID: " + bookdto.getId());
//				
//				return "book/checkBeforePay"; //JSP 페이지 경로 
//			}
//			@RequestMapping("/checkBeforePay")
//			public String allSelectTime(@RequestBody BookDTO bookDTO, HttpSession session)throws Exception{
//					session.setAttribute("bookDTO",bookDTO);				
//					  System.out.println("예약날짜 : " + bookDTO.getReservDate());
//					  System.out.println("예약시간 : " + bookDTO.getResevTime());
//					return "book/checkBeforePay"; //JSP 페이지 경로 
//			}
			
//			@RequestMapping("/checkBeforePay")
//			public String checkBeforePay(@RequestBody BookDTO bookDTO, Model model, HttpSession session) throws Exception {
//			    session.setAttribute("bookDTO", bookDTO);
//
//			    System.out.println("공연번호: " + bookDTO.getPerformance_num());
//			    System.out.println("공연명: " + bookDTO.getPrfnm());
//			    System.out.println("ID: " + bookDTO.getId());
//			    System.out.println("예약날짜 : " + bookDTO.getReservDate());
//			    System.out.println("예약시간 : " + bookDTO.getResevTime());
//			    return "book/checkBeforePay"; // JSP 페이지 경로
//			}
//		

	}	
	

		
		
	
	

