package com.per.main.pay;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.per.utils.IamPortKey;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	private IamportClient api;
	
	public PayController() {
    	// REST API 키와 REST API secret 입력.
		IamPortKey key = new IamPortKey();
		this.api = new IamportClient(key.getAPIKey(),
				key.getAPISecret());
	}
	
	@RequestMapping(value = "pay")
	public String getPay() {
		
		return "pay/pay_modal";
	}
	
	@ResponseBody
	@RequestMapping(value="/verifyIamport/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(
			Model model, Locale locale, HttpSession session
			, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException{	
	
		return api.paymentByImpUid(imp_uid);
	}
}
