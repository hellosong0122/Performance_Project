package com.per.main.pay.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pay/reservation/*")
public class ReservationController {

	@RequestMapping(value="performance",method=RequestMethod.GET)
	public String performanceList()throws Exception{
		
		
		return "";
	}
}
