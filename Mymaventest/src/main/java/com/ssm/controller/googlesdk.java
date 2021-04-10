package com.ssm.controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.service.UserService;
@Controller
public class googlesdk {
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/googleVerify", method = RequestMethod.GET)
	public String verifyToken(String idtokenstr,HttpServletRequest request) {
		request.getSession().invalidate();
		request.getSession().setAttribute("googlelogin","歡迎: "+request.getParameter("FullName"));
		request.getSession().setAttribute("googleEmail",request.getParameter("Email"));


		return "redirect:toindex";
	}
	
	@RequestMapping(value = "/togooglelogout", method = RequestMethod.GET)
	public String togooglelogout(String idtokenstr,HttpServletRequest request,HttpServletResponse response) {
		request.getSession().invalidate();

			request.getSession().removeAttribute("googlelogin");
			request.getSession().removeAttribute("googleEmail");
				//清除google 登入
		return "redirect:toindex";
	}
	
	
	

	
	
	
}
