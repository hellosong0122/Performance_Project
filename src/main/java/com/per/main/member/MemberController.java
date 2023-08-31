package com.per.main.member;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
@RequestMapping("/member/*")
public class MemberController {


	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSendService mailService;
	
	//naverapi
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO= naverLoginBO;
	}
	
	@RequestMapping(value="join",method=RequestMethod.GET)
	public void setJoin()throws Exception{

	}
	
	@RequestMapping(value="join",method=RequestMethod.POST)
	public String setJoin(MemberDTO memberDTO)throws Exception{
		int result = memberService.setJoin(memberDTO);
		
		return "redirect:../";
	}
	
	@RequestMapping(value="idCheck", method=RequestMethod.GET)
	public String getId(MemberDTO memberDTO,Model model)throws Exception{
		memberDTO = memberService.getId(memberDTO);
		
		int result = 0;
		
		if(memberDTO==null) {
			result = 1;
		}
		
		model.addAttribute("result", result);		
		
		return "commons/ajaxResult";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String getLogin(Model model, HttpSession session)throws Exception{	
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		model.addAttribute("url", naverAuthUrl); 
		return "member/login";
	}		
	
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String getLogin(MemberDTO memberDTO,Model model, HttpSession session)throws Exception{
		memberDTO = memberService.getLogin(memberDTO);			
		
		if(memberDTO != null){
			session.setAttribute("member", memberDTO);				
		}	
		
		return "redirect:../";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String getLogout(HttpSession session)throws Exception{
		session.invalidate();
		
		return "redirect:../";
	}
	
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
		
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
 
        //1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken);  //String형식의 json데이터
		
		/** apiResult json 구조
		{"resultcode":"00",
		 "message":"success",
		 "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
		**/
		
		//2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		System.out.println(jsonObj);
		
		//3. 데이터 파싱 
		//Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		//response의 birtyear값 파싱
		String birthyear = (String)response_obj.get("birthyear");
 
		System.out.println(birthyear);
		
		//4.파싱 birthyear 세션으로 저장
		session.setAttribute("member",birthyear); //세션 생성			
		model.addAttribute("result", apiResult);
	     

		System.out.println(session);
		return "member/naverSuccess";
	}
	
	
		@RequestMapping(value="mailCheck", method=RequestMethod.GET)
		@ResponseBody
		public String mailCheck(String email) {
			System.out.println("이메일 인증 요청이 들어옴");
			System.out.println("이메일 인증 이메일 : " + email);
			return mailService.joinEmail(email);
		}
		
		@RequestMapping(value="findId", method=RequestMethod.GET)
		public void findId() throws Exception{
			
		}
		
		@RequestMapping(value="findId", method=RequestMethod.POST)
		public ModelAndView findId(MemberDTO memberDTO,ModelAndView mv) throws Exception {
			
			memberDTO = memberService.findId(memberDTO);
			System.out.println(memberDTO.getId());
			
			mv.addObject("dto", memberDTO);
			mv.setViewName("member/findId");
			
			return mv;
		}		
	
	
	
}