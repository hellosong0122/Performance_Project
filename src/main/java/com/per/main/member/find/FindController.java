package com.per.main.member.find;

import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.per.main.member.MailSendService;
import com.per.main.member.MemberDTO;

@Controller
@RequestMapping("/member/*")
public class FindController {
	
	@Autowired  
	private FindService findService;
	 @Autowired
	private MailSendService mailSendService;
	
	   
	 	@RequestMapping(value="findId", method=RequestMethod.GET)
	    public void findId() {
	    
	    }

	 	@RequestMapping(value="findId", method=RequestMethod.POST)
	    public ModelAndView findIdResult(String name, String email) throws Exception {
	        ModelAndView modelAndView = new ModelAndView("member/findId");
	        MemberDTO memberDTO = new MemberDTO();
	        memberDTO.setName(name);
	        memberDTO.setEmail(email);
	      
	        
	        //데이터 확인용
	        System.out.println("Name: " + name);
	        System.out.println("Email: " + email );

	        memberDTO = findService.getMemberId(memberDTO);

	        if (memberDTO != null) {
	            modelAndView.addObject("successMessage", "찾으시는 아이디는 " + memberDTO.getId() + " 입니다.");
	        } else {
	            modelAndView.addObject("errorMessage", "일치하는 회원 정보가 없습니다.");
	        }

	        return modelAndView;
	    }
	 
	 
	
	@RequestMapping(value="findPw", method=RequestMethod.GET)
	public ModelAndView findPassword() {
		return new ModelAndView("member/findPw");
	}
	

	@RequestMapping(value="findPw", method=RequestMethod.POST)
    public ModelAndView findPasswordProcess(HttpServletRequest request, String id, String email) {
        ModelAndView modelAndView = new ModelAndView("member/findPw");
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setId(id);
        memberDTO.setEmail(email);
        
        //결합 데이터 확인용
        System.out.println("ID: " + id);
        System.out.println("Email: " + email);

        try {
            MemberDTO foundMember = findService.findPw(memberDTO);
            if (foundMember != null) {
                String tempPassword = generateTempPassword(8);

                foundMember.setPw(tempPassword);           
                System.out.println(foundMember.getPw());
                
                //db 패스워드 임시비밀번호로 업데이트
                findService.updatePw(foundMember);

                sendEmailWithTempPassword(email,tempPassword);

                modelAndView.addObject("successMessage", "임시 비밀번호가 이메일로 전송되었습니다.");
            } else {
                modelAndView.addObject("errorMessage", "일치하는 회원 정보가 없습니다.");
            }
        } catch (Exception e) {
            modelAndView.addObject("errorMessage", "비밀번호 찾기 처리 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        return modelAndView;
    }

    // 임시 비밀번호 생성 메소드
    private String generateTempPassword(int length) {
        if (length < 1) {
            throw new IllegalArgumentException("length must be a positive number");
        }
        
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
        StringBuilder tempPassword = new StringBuilder();
        
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(chars.length());
            char randomChar = chars.charAt(index);
            tempPassword.append(randomChar);
        }
        
        return tempPassword.toString();
    }

 // 이메일로 임시 비밀번호 전송 메소드
   

    private void sendEmailWithTempPassword(String email, String tempPassword) {       
        String setFrom = ".com";
        String subject = "임시 비밀번호 발급 안내";
        String content = 
			"귀하의 임시 비밀번호는 다음과 같습니다." +
	        "<br><br>" + 
		    "임시 비밀번호는 " + tempPassword + "입니다." + 
		    "<br>" + 
		    "임시 비밀번호로 로그인 한 후, 비밀번호를 변경해 주시기 바랍니다.";
        
        mailSendService.mailSend(setFrom, email, subject, content);
    }
	
	
}
