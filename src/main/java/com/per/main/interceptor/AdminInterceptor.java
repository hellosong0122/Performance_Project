package com.per.main.interceptor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.per.main.member.MemberDTO;

@Component
public class AdminInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		String role= memberDTO.getRole();
		System.out.println(role);
		if(role.equals("1")){			
				return true;
			}			
		request.setAttribute("message", "권한이 아닙니다!");
		request.setAttribute("url", "/");
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/commons/result.jsp");
		try {
			view.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false; 
	}

}
