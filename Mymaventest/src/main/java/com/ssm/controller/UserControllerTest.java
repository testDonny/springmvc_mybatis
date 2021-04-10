package com.ssm.controller;
/*
 * 2020/11/07/04:27
 * 沒用了不要裡我
 */
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.joda.LocalDateTimeParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;
import com.ssm.BCrypt.BCrypt;
import com.ssm.po.Com;
import com.ssm.po.Shop;
import com.ssm.po.Timeswatched;
import com.ssm.po.User;
import com.ssm.po.video;
import com.ssm.po.problem;
import com.ssm.po.random;
import com.ssm.service.UserService;

@Controller
public class UserControllerTest {
	@Autowired
//自動注入
	private UserService userService;
//	@RequestMapping(value="/to",method=RequestMethod.GET)
//	public String getpassword(HttpServletRequest request) {
//
//		return "test";
//	
//}
	/**
	 * 去我的小屋
	 */


//@RequestMapping(value="/loginc")
//	public String login(Model model, HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//	    String username =request.getParameter("username");
//	    String password =request.getParameter("password");
//	    String autologin=request.getParameter("autologin");
//	    System.out.println("�n�J�b��"+username);
//	    System.out.println("�n�J�K�X"+password);
//	    System.out.println("�n�J���A"+autologin);
//	    User user=new User();
//	    user.setUsername(username);
//	    user.setPassword(password);
//	    
//	    User users= userService.login(user);
//	    System.out.println("users= "+users);
//
//	    if(user.getUsername()==null||user.getPassword()==null) {
//	    	System.out.println("�n�J����");
//			  model.addAttribute("msg","�бq�s�n�J");
//		   return "login";  
//	  }
//	  /**
//	   * �n�J�b���K�X���~�n�J����
//	   */
//	   if(users==null) {
//		   	 //��o�ӧP�_�u�ѤU�S��cookie�ӥB�n�J���ѱb���αK�X���~
// 	    	System.out.println("�n�J����");
// 			  model.addAttribute("msg","�b���αK�X���~");
// 		   return "login";   
// 	  }
//	   /**
//	    * �����Ĥ@���n�J�S��cookie�s�b�����p�U����cookie
//	    * �n�J���b���K�X���T,�åB����cookie
//	    */
//	  if(users!=null) {//�ĤG�P�_���S��cookie
//		 if(autologin!=null) {
//		    Cookie cookie=new Cookie("user",users.getUsername()+"&"+users.getPassword());	
//		    cookie.setMaxAge(60*60);//�o�̳]�w�]�w���Įɶ��A��쪺��A�ڳo�̬O�@�p��
//		    cookie.setPath("/");//�o�̬O���ڥؿ��U�Ҧ����ؿ����i�H�@��Cookie
//		    response.addCookie(cookie);//�s�WCookie
//		    System.out.println("cookie����= "+cookie.getName());
//		    }
//
//          request.getSession().setAttribute("username", username);
//          request.getSession().setAttribute("password", password);
//   	//�p�G��Ʈw���d�ߨ��ƪ�ܵn�J���\�i�J�n�J���\
//       return "start";
//   }
//
//	    return null;  
//}
//
//@RequestMapping(value="/toregister",method=RequestMethod.GET)
//public String toregister() {
//	return "register";
//}
//@RequestMapping(value="/registerok")
//public String registerok(Model model,HttpServletRequest request,HttpServletResponse response) {
//	User user=new User();
//	String username=request.getParameter("username");
//	String password=request.getParameter("password");
//	String email=request.getParameter("email");
//	String phone=request.getParameter("phone");
//	String idcard=request.getParameter("id");
//	System.out.println("���U�P�_");
//	
//	user.setUsername(username);
//	user.setPassword(password);
//	user.setEmail(email);
//	user.setPhone(phone);
//	user.setIdCard(idcard);
//	
//	User userCheck=userService.findUserByUserName(username);
//	System.out.println("userCheck= "+userCheck);
//	if(userCheck!=null) {
//		System.out.println("���U����");
//		 model.addAttribute("msg","���U���Ѹӱb���w�s�b");
//		return "register";
//	}
//	else if(userCheck==null) {
//	User idCardCheck=userService.findUserByIdCard(idcard);
//	if(idCardCheck==null) {
//		userService.addUser(user); 
//		System.out.println("���U���\");
//		 model.addAttribute("msg","���U���\�еn�J");
//		return "redirect:tologin";
//	}else {
//		System.out.println("���U����");
//		 model.addAttribute("msg","���U���ѸӨ����Ҥw�s�b");
//		return "register";
//	}
//	}
//	System.out.println("�P�_����");
//	return null;
//	
//}
//@RequestMapping(value="/logout",method=RequestMethod.POST)
//public String logout(Model model,HttpServletRequest request,HttpServletResponse response) {
//	System.out.println("�w�n�X2");
//    Cookie[] cookies = request.getCookies();
//    for (Cookie cookie :cookies){//�M���Ҧ�Cookie
//    	System.out.println("cookie����= "+cookie.getName().equals("user"));
//        if(cookie.getName().equals("user")){//��������cookie
//            cookie.setMaxAge(0);//Cookie�ä���ڥ��N�q�W�R���A�u�ݭn�o�˳]�w��0�Y�i
//            cookie.setPath("/");//�]�w����g�Jcookies�@�˪��A�����|�@��Cookie
//            response.addCookie(cookie);//���s�T��
//        }
//    }
//    model.addAttribute("msg","�w�n�X");
//    request.getSession().invalidate();
//    System.out.println(request.getSession().getAttribute("username"));
//    System.out.println(request.getSession().getAttribute("password"));
//    return "redirect:tologin";
//
//}
///**
// * ���b�o�̲��ͻݭn���F��
// * @return
// */
//@RequestMapping(value="/newcard",method=RequestMethod.GET)
//public String newcard(Model model,HttpServletRequest request) {
//    
//    
//    System.out.println("�n�J�b��= "+request.getSession().getAttribute("username"));
//    System.out.println("�n�J�K�X= "+request.getSession().getAttribute("password"));
//    User user=new User();
//    user.setUsername((String) request.getSession().getAttribute("username"));
//    user.setPassword((String) request.getSession().getAttribute("password"));
//    
//    User users= userService.login(user);
//    
//    	if(users!=null) {
//    	management m =userService.newcard(users);
//		request.setAttribute("cardTotal",m.getUR()+m.getSSR()+m.getSR()
//		+m.getR()+m.getN());
//		System.out.println("�`�@�Ѧh��= "+request.getAttribute("cardTotal"));
//    	request.setAttribute("card1",m.test1(m.getMyCardUR(),m.getMyCardSSR(),
//    	    	m.getMyCardSR(),m.getMyCardR(),m.getMyCardN()));
//    	request.setAttribute("card2",m.test2
//    		(m.getUR(), m.getSSR(), m.getSR(),m.getR(), m.getN()));
//    	request.setAttribute("a1",request.getParameter("a1"));
//    	return "card";
//    	}else {
//    		model.addAttribute("msg","�бq�s�n�J");
//    		return "redirect:tologin";
//    	}
//
//}
//@RequestMapping(value="/takeoutcard",method=RequestMethod.POST)
//public String takeoutcard(Model model,HttpServletRequest request) {
//    User user=new User();
//    user.setUsername((String) request.getSession().getAttribute("username"));
//    user.setPassword((String) request.getSession().getAttribute("password"));
//    User users= userService.login(user);
//    System.out.println("�n�J����= "+userService.login(user));
//    management m =userService.newcard(users);
//    System.out.println("�d������= "+userService.newcard(users));
//    System.out.println("card�Ѽƴ���= "+request.getParameter("card"));
//    List<String> list=new ArrayList<String>();
//    if(request.getParameter("card").equals("one")) {
//    	model.addAttribute("a1",m.test(m.getOne()));
//	}else if(request.getParameter("card").equals("ten")) {
//		for(int x=0;x<=9;x++) {
//	if(x%2!=0) {
//	list.add(m.test(m.getOne())+"<br>");
//	}else {
//		list.add(m.test(m.getOne()));
//	}
//	}
//		model.addAttribute("a1",list.toString());
//	}
//    users.getM().setUR(m.getUR());
//    users.getM().setSSR(m.getSSR());
//    users.getM().setSR(m.getSR());
//    users.getM().setR(m.getR());
//    users.getM().setN(m.getN());
//    users.getM().setMyCardUR(m.getMyCardUR());
//    users.getM().setMyCardSSR(m.getMyCardSSR());
//    users.getM().setMyCardSR(m.getMyCardSR());
//    users.getM().setMyCardR(m.getMyCardR());
//    users.getM().setMyCardN(m.getMyCardN());
//    userService.update(users);
//    System.out.println("��ƭק�X3");
//	return "redirect:newcard";
//}
//@RequestMapping(value="/toupdate",method=RequestMethod.GET)
//public String update() {
//	return "update";
//}
//@RequestMapping(value="/updatec",method=RequestMethod.POST)
//public String updatec(HttpServletRequest request,HttpServletResponse response,Model model) {
//	String username=request.getParameter("username");
//	String idcard=request.getParameter("idcard");
//	User users=new User();
//	users.setUsername(username);
//	users.setIdCard(idcard);
//	User user=userService.updateselectusername(users);
//	User userss=userService.updateselectidcard(users);
//	if(user==null) {
//		System.out.println("�ӱb�����s�b1");
//		model.addAttribute("msg","�ӱb�����s�b");
//		return "update";
//	}else if(userss==null) {
//		System.out.println("�����ҿ��~");
//		model.addAttribute("msg","�����ҿ��~");
//		return "update";
//	}
//	else {
//		request.getSession().setAttribute("username1",user.getUsername());
//		request.getSession().setAttribute("idcard1",user.getIdCard());
//	return "updatepassword";
//	}
//}
//@RequestMapping(value="/getpassword",method=RequestMethod.POST)
//public String getpassword(HttpServletRequest request) {
//	User users=new User();
//	users.setUsername((String) request.getSession().getAttribute("username1"));
//	users.setIdCard((String) request.getSession().getAttribute("idcard1"));
//	users.setPassword(request.getParameter("password"));
//	System.out.println((String) request.getSession().getAttribute("username1"));
//	System.out.println((String) request.getSession().getAttribute("idcard1"));
//	System.out.println(request.getParameter("password"));
//	userService.updatepassword(users);
//	System.out.println("�ק令�\");
//	request.setAttribute("msg","�ק令�\�й��յn�J");
//	return "login";
//}
	
	
	

}