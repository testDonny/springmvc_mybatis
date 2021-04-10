package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.ssm.BCrypt.BCrypt;
import com.ssm.po.Shop;
import com.ssm.po.User;
import com.ssm.po.problem;
import com.ssm.po.random;
import com.ssm.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	// 我是註冊
	@RequestMapping(value = "/toindex321", method = RequestMethod.GET)
	public String toindex3_2_1(HttpServletRequest request) {
		random r = new random();
		request.setAttribute("random", r.getRandom());
		return "index3_2_1";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request, Model model) {
		User user = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String idcard = request.getParameter("id");
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("password"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("phone"));
		System.out.println(request.getParameter("id"));

		System.out.println("註冊判斷");

		user.setUsername(username);
		user.setPassword(BCrypt.hashpw(password, BCrypt.gensalt()));
		user.setEmail(email);
		user.setPhone(phone);
		user.setIdCard(idcard);

		User addUserCheckUser = userService.addUserCheckUser(user);
		System.out.println("test1 " + addUserCheckUser);

		if (addUserCheckUser != null) {
			System.out.println("帳號重複註冊失敗");
			model.addAttribute("rsucc", "註冊失敗帳號已存在");
//			request.getSession().setAttribute("rsucc", "註冊失敗帳號已存在");
			return "redirect:toindex322";
		} else if (addUserCheckUser == null) {
			User addUserCheckidCard = userService.addUserCheckidCard(user);
			System.out.println("test2  " + addUserCheckidCard);
			if (addUserCheckidCard == null) {
				userService.addUser(user);
				System.out.println("註冊成功");
				model.addAttribute("rsucc", "註冊成功請嘗試登入");

				return "redirect:toindex322";
			} else if (addUserCheckidCard != null) {
				System.out.println("身分證重複註冊失敗");
//			request.getSession().setAttribute("rsucc", "註冊失敗身分證已存在");
				model.addAttribute("rsucc", "註冊失敗身分證已存在");
				return "redirect:toindex322";
			}
		}
		return null;
	}

	// 我是登入
	@RequestMapping(value = "/toindex322", method = RequestMethod.GET)
	public String toindex3_2_2(HttpServletRequest request, HttpServletResponse response) {

		return "index3_2_2";
	}

	@RequestMapping(value = "/loginc", method = RequestMethod.POST)
	public String loginc(HttpServletRequest request, Model model) {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");

		System.out.println(userName);
		System.out.println(passWord);
		User user = new User(); // 產生物件
		user.setUsername(userName); // 帳密放進去
		user.setPassword(passWord);

		User user_1 = userService.encryption(user);// 用傳進來的帳號查詢加密過的密碼

		if (user.getUsername() == null || user.getPassWord() == null) {
			System.out.println("登入失敗");
			// 處理從外部連近來佔時用不到
//			  model.addAttribute("msg","請從新登入");
			return "index3_2_2";
		}
		if (user_1 == null) { // 查詢結果不存在
			System.out.println("登入失敗");
			model.addAttribute("msg", "帳號或密碼錯誤");
//		    	 request.getSession().setAttribute("msg","帳號或密碼錯誤");
//		    	 System.out.println(request.getSession().getAttribute("msg"));
			return "index3_2_2";
		}
		if (user_1 != null) { // 查詢成功
			request.getSession().invalidate();
			User users = userService.login(user_1);// 用查詢到的加密密碼進行查詢
			request.getSession().setAttribute("username", "歡迎使用者 :" + users.getUsername());
			request.getSession().setAttribute("userid", users.getId());
			request.getSession().setAttribute("useremail", users.getEmail());

			// 我要用身分證第二碼判斷性別
			char s = users.getIdCard().charAt(1);

			String ss = String.valueOf(s);

			if (ss.equals("1")) {
				request.getSession().setAttribute("usersex", "男");
			} else if (ss.equals("2")) {

				request.getSession().setAttribute("usersex", "女");
			}

			System.out.println(request.getSession().getAttribute("userid"));
			System.out.println("登入成功");
//			   model.addAttribute("msg","");
			return "index";
		}
//		return "index3_2_2";
		return null;
	}

	@RequestMapping(value = "/toindex323", method = RequestMethod.GET)
	public String toindex3_2_3(HttpServletRequest request) {

		return "index3_2_3";
	}

	@RequestMapping(value = "/equals", method = RequestMethod.POST)
	public String equals(HttpServletRequest request, Model model) {
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setEmail(request.getParameter("email"));

		User users = userService.upUserSelect(user);
		if (users == null) {
			request.setAttribute("result", "帳號或信箱錯誤");
			return "index3_2_3";
		} else {
			request.getSession().setAttribute("u1", users.getUsername());
			request.getSession().setAttribute("u2", users.getEmail());
			return "redirect:https://script.google.com/macros/s/AKfycbzX_kjkCBt-LYkuQn95MSuRm6lnVd4q8buB6zhk1Chu5QddgF5z/exec?mail=x33778899@gmail.com";
		}

	}

	@RequestMapping(value = "/toforget", method = RequestMethod.GET)
	public String toforget(HttpServletRequest request, Model model) {

		return "forget";
	}

	@RequestMapping(value = "/forgeteq", method = RequestMethod.POST)
	public String forget(HttpServletRequest request, Model model) {
		User user = new User();
		user.setEmail((String) request.getSession().getAttribute("u2").toString());
		user.setUsername((String) request.getSession().getAttribute("u1").toString());

		user.setPassword(BCrypt.hashpw(request.getParameter("password"), BCrypt.gensalt()));
		userService.upUserSelect(user);
		model.addAttribute("eq", "eq");
		request.getSession().removeAttribute("u1");
		request.getSession().removeAttribute("u2");
		//用完就清掉下次進不去
		return "redirect:toindex";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("已登出2");
//	    Cookie[] cookies = request.getCookies();
//	    for (Cookie cookie :cookies){//遍歷所有Cookie
//	    	System.out.println("cookie測試= "+cookie.getName().equals("user"));
//	        if(cookie.getName().equals("user")){//找到對應的cookie
//	            cookie.setMaxAge(0);//Cookie並不能根本意義上刪除，只需要這樣設定為0即可
//	            cookie.setPath("/");//設定成跟寫入cookies一樣的，全路徑共享Cookie
//	            response.addCookie(cookie);//重新響應
//	        }
//	    }
//	    model.addAttribute("msg","已登出");
		request.getSession().invalidate();
		request.getSession().setAttribute("logout", "你已經登出摟");
//	    System.out.println(request.getSession().getAttribute("username"));
//	    System.out.println(request.getSession().getAttribute("password"));
		return "redirect:toindex";

	}

}
