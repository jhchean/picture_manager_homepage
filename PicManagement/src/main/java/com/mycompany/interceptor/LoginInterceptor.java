package com.mycompany.interceptor;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	public static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("pre Handler .......................................................................................");

		//
		HandlerMethod method = (HandlerMethod) handler;
		Method methodObj = method.getMethod();
		
		System.out.println("Bean : " + method.getBean());
		System.out.println("Method : " + methodObj);
		
		//session안의 login 정보 삭제
		HttpSession session = request.getSession();
		
		if(session.getAttribute(LOGIN) != null){
			logger.info("clear login data preHandle");
			session.removeAttribute(LOGIN);
		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("post Handler .......................................................................................");
		
		
		/*HttpSession session = request.getSession();
		
		Object userVO = modelAndView.getModel().get("userVO");
		logger.info(""+userVO);
		if(userVO != null){
			logger.info("new login Success");
			session.setAttribute(LOGIN, userVO);
			response.sendRedirect(request.getContextPath());  //home
		}*/
		
	}
	

}
