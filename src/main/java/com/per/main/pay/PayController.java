package com.per.main.pay;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.per.main.member.MemberDTO;
import com.per.main.member.MemberService;
import com.per.main.pay.product.ProductDTO;
import com.per.main.pay.product.ProductVO;
import com.per.utils.IamPortKey;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@RequestMapping("/pay/*")
public class PayController {

	private IamportClient api;
	
	@Autowired
	private MemberService memberService;

	public PayController() {
		// REST API 키와 REST API secret 입력.
		IamPortKey key = new IamPortKey();
		this.api = new IamportClient(key.getAPIKey(), key.getAPISecret());
	}

	@RequestMapping(value = "buygift", method = RequestMethod.POST)
	public ModelAndView payGiftMotion(MemberDTO memberDTO, @ModelAttribute ProductVO productVO, HttpSession session,
			ModelAndView mv) throws Exception {
		memberDTO = (MemberDTO) session.getAttribute("member");
		memberDTO = (MemberDTO) memberService.getUserInfo(memberDTO);
		if (memberDTO !=null) {
			mv.addObject("member", memberDTO);
			mv.addObject("gift", productVO);	
		}
		System.out.println(memberDTO.toString());
		System.out.println(productVO.toString());
		mv.setViewName("pay/pay_modal");
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/verifyIamport/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session,
			@PathVariable(value = "imp_uid") String imp_uid) throws IamportResponseException, IOException {

		return api.paymentByImpUid(imp_uid);
	}
}
