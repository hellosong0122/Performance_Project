package com.per.main.book;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.per.main.board.BoardDTO;
import com.per.main.per.PerformanceDTO;
import com.per.main.per.PerformancePlaceDTO;
import com.per.main.per.PerformanceService;
import com.per.utils.IamPortKey;
import com.per.utils.Pager;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/book/*")
public class BookController {

	private IamportClient api;

	public BookController() {
		IamPortKey key = new IamPortKey();
		this.api = new IamportClient(key.getAPIKey(), key.getAPISecret());
	}

	@Autowired
	private BookService bookService;
	
	
	@Autowired
	private PerformanceService performanceService;

	// 예매하기 버튼누르기
	// 예메하기 버튼을 누르면 팝업창 오픈
	@GetMapping("/selectPerBtn")
	public String calendarOpen() throws Exception {
		return "book/calendar";
	}

	// book/calendar
	// 팝업창 열리면 calendar.jsp 출력
	@GetMapping("/calendar")
	// calendar로 get요청왔을 때 이 메서드로 매핑.
	public String showCalendar() throws Exception {
		return "book/calendar";
	}

	@GetMapping("/selectSeat")
	public String seatOpen() throws Exception {
		return "book/seat";
	}

	@GetMapping("/seat")
	public String showSeat(Model model) throws Exception {
		List<SeatDTO> arr = bookService.getSeat();
		model.addAttribute("list", arr);
		return "book/seat";
	}

	// check
	@GetMapping("/checkBeforePay")
	public String check() throws Exception {
		return "book/checkBeforePay";
	}

	@PostMapping("book/checkBeforePay")
	public ModelAndView getSeatPrice(PerformanceDTO performanceDTO, ModelAndView mv) throws Exception {
		PerformancePlaceDTO placeDTO = performanceService.getDetail(performanceDTO);
		mv.addObject("dto", placeDTO);
		return mv;
	}

	
	//DB에 book 정보넣기, 단순히 저장만함
	@PostMapping("done")
	@ResponseBody
	public boolean viewPayInfo(@ModelAttribute PerformanceOrderDTO orderDTO,PerformanceDTO performanceDTO,PerformancePlaceDTO performancePlaceDTO,ModelAndView mv) throws Exception {
		boolean result = false;
		System.out.println("complete pay");
		System.out.println(orderDTO.toString());
		
		if (orderDTO != null) {
			orderDTO = bookService.reservationPer(orderDTO);
			result = true;
		}
		//orderDTO = bookService.reservationPer(orderDTO);
	
		
		mv.addObject("dto", orderDTO);
		mv.setViewName("book/bookDone");
		return result; 
		
	}
	
	
	///////////////
	
	
	@RequestMapping(value = "bookDone", method = RequestMethod.GET)
	public ModelAndView getBook(@RequestParam("orderNum") String orderNum, ModelAndView mv) throws Exception {
	    PerformanceOrderDTO orderDTO = new PerformanceOrderDTO();
	    orderDTO.setOrderNum(orderNum);
	    orderDTO = bookService.getBook(orderDTO);
		System.out.println(orderDTO.toString());
	    mv.addObject("dto", orderDTO);
	    mv.setViewName("book/bookDone");
	    return mv;
	}
// done페이지에 결제정보 뿌려주기
//	@RequestMapping( value = "bookDone",method = RequestMethod.GET)
//	
//	public ModelAndView getBook(PerformanceOrderDTO orderDTO, ModelAndView mv)throws Exception{
//	orderDTO = bookService.getBook(orderDTO);
//		
//		System.out.println(orderDTO.toString());
//		mv.addObject("dto", orderDTO);
//		mv.setViewName("book/bookDone");
//		System.out.println(orderDTO.toString());
//		return mv;
//	}

//	@RequestMapping( value = "bookDone",method = RequestMethod.GET)
//	
//		public String getBook(Model model, PerformanceOrderDTO orderDTO)throws Exception{
//		List<PerformanceOrderDTO> ar = bookService.getBook(orderDTO);
//		
//		System.out.println(orderDTO.toString());
//		model.addAttribute("perList", ar);
//		System.out.println(orderDTO.toString());
//		return "book/bookDone";
//	}
	
	
	
	
	
	/////////////////////////
//	@RequestMapping(value = "bookDone", method = RequestMethod.GET)
//	public String getBook(@RequestParam("orderNum") String orderNum, Model model, PerformanceOrderDTO orderDTO) throws Exception {
//		System.out.println(orderDTO.toString());
//		PerformanceOrderDTO result = bookService.getBook(orderDTO);
//		model.addAttribute("perList", result);
//	    return "book/bookDone";
//	}
	////////////////////////
	

	
	// done페이지에 결제정보 뿌려주기
//	@PostMapping("book/done")
//	public ModelAndView getBookDetails(PerformanceOrderDTO performanceOrderDTO, ModelAndView mv) throws Exception{
//	    performanceOrderDTO = bookService.getBook(performanceOrderDTO);
//	    mv.addObject("dto", performanceOrderDTO);
//	    mv.setViewName("book/done");
//	    return mv;
//	}
	//BOOK정보가져오기		
//		@PostMapping("done")
//		public String getBook(PerformanceOrderDTO performanceOrderDTO,Model model)throws Exception{
//			List<PerformanceOrderDTO> ar = bookService.getBook(performanceOrderDTO);
//			model.addAttribute("book",ar);
//			return "book/done";
//			//return "redirect:../detail";
//		}
	
		

	@ResponseBody
	@RequestMapping(value = "/verifyIamport/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session,
			@PathVariable(value = "imp_uid") String imp_uid, HttpServletRequest request)
			throws IamportResponseException, IOException {
		System.out.println("step 1");

		IamportResponse<Payment> paymentIamportResponse = api.paymentByImpUid(imp_uid);
		Payment payment = paymentIamportResponse.getResponse();
		session = request.getSession(false);
		session.setAttribute("payment", payment);
		session.setMaxInactiveInterval(600);
		return paymentIamportResponse;
	}

//			

}
