package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.po.Shop;
import com.ssm.po.Timeswatched;
import com.ssm.po.problem;
import com.ssm.service.UserService;
@Controller
public class WebsiteFunction {
	@Autowired
	private UserService userService;
	@RequestMapping(value="/tostart",method=RequestMethod.GET)
	public String getpassword(HttpServletRequest request) {

		return "start";
	
}
	
	@RequestMapping(value = "/toindex", method = RequestMethod.GET)
	public String toindex(HttpServletRequest request) {

		return "index";
	}
	/**
	 * 
	 * 故事
	 */

	@RequestMapping(value = "/toindex1", method = RequestMethod.GET)
	public String toindex1(HttpServletRequest request) {

		return "index1";
	}


	
	
//	@RequestMapping(value = "/toUserspace", method = RequestMethod.GET)
//	public String myhome(HttpServletRequest request, Model model) {
//		String s1 = (String) request.getSession().getAttribute("username").toString();
//		String ss1[] = s1.split(":");
//		request.getSession().setAttribute("usernames", ss1[1]);
//		return "myhome";
//	}

	
	/**
	 * 
	 * 帶你去看電影選擇
	 */
	@RequestMapping(value = "/toindex2", method = RequestMethod.GET)
	public String toindex2(HttpServletRequest request) {
//		Timeswatched t = new Timeswatched();
//		Timeswatched ts = userService.look(t);
//		System.out.println("查結果:  " + ts);
//		String look = ts.toString();
//		String[] looks = look.split(",");
//		for (int y = 0; y < looks.length; y++) {
//			request.getSession().setAttribute("look" + y, looks[y]);
//		}
		return "index2";
	}

	/**
	 * 
	 * 帶你去看電影 並且計算觀看次數
	 */

	@RequestMapping(value = "/tovideo", method = RequestMethod.GET)
	public String tovideo(HttpServletRequest request, Model model) {
		model.addAttribute("video", request.getParameter("video"));
		for (int x = 0; x < 26; x++) {
			if (request.getParameter("video").equals("" + (x + 1))) {

				Integer look = Integer.parseInt(request.getSession().getAttribute("look" + x).toString());
				request.getSession().setAttribute("look" + x, look + 1);
				System.out.println("有沒有增加" + request.getSession().getAttribute("look" + x));

			}
		}
		Timeswatched t = new Timeswatched();
		String s = "";
		for (int y = 0; y < 26; y++) {
			s += (String) request.getSession().getAttribute("look" + y).toString() + ",";
		}
		t.setLook(s);
		System.out.println("再看一次結果" + t.getLook());
		userService.lookupdate(t);
		System.out.println(t);
		return "redirect:tovideos";
	}

	/**
	 * 
	 * 更新完再帶你看一次電影
	 */

	@RequestMapping(value = "/tovideos", method = RequestMethod.GET)
	public String videos(HttpServletRequest request, Model model) {
		model.addAttribute("video", request.getParameter("video"));
		return "video";
	}
	@RequestMapping(value = "/tomsg", method = RequestMethod.GET)
	public String tomsg(HttpServletRequest request, HttpServletResponse response) {
		return "message";

	}

	@RequestMapping(value = "/formsg", method = RequestMethod.POST)
	public String formsg(HttpServletRequest request, HttpServletResponse response,Model model) {

		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("phone"));
		System.out.println(request.getParameter("problem"));
		System.out.println(request.getParameter("mytextarea"));

		String ss="";
		problem problem = new problem();
		if(request.getSession().getAttribute("googleEmail")!=null) {
			ss = (String) request.getSession().getAttribute("googleEmail").toString();
			problem.setUserName(ss);
		}if(request.getSession().getAttribute("username")!=null) {
			ss = (String) request.getSession().getAttribute("username").toString();
			String sss[] = ss.split(":");
			problem.setUserName(sss[1]);
		}
		
		

		problem.setEmail(request.getParameter("email"));
		problem.setPhone(request.getParameter("phone"));
		problem.setProblem(request.getParameter("problem"));
		problem.setMytextarea(request.getParameter("mytextarea"));

		userService.problemrequest(problem);
		model.addAttribute("msg","msg");
		// 我是寄信網址
		// redirect:https://script.google.com/macros/s/AKfycbzRGEGpcH9YQuSIZV9K28nbgo5LQVECcuz1hKFuqLsXO9_qPASD/exec?mail=x33778899@gmail.com
		return "redirect:toindex";

	}
	@RequestMapping(value = "/responsereceive", method = RequestMethod.GET)
	public String responsereceive(HttpServletRequest request) {

		String ss="";
		problem problem = new problem();
		if(request.getSession().getAttribute("googleEmail")!=null) {
			ss = (String) request.getSession().getAttribute("googleEmail").toString();
			problem.setUserName(ss);
		}if(request.getSession().getAttribute("username")!=null) {
			ss = (String) request.getSession().getAttribute("username").toString();
			String ss1[] = ss.split(":");
			problem.setUserName(ss1[1]);
		}

		problem.setResponse("2");
		List<problem> problems = userService.presponsereceive(problem);
		for (int z = 0; z < problems.size(); z++) {

			if (problems.get(z).getProblem().toString().equals("usererr")) {
				request.setAttribute("x" + z, "帳號問題");
			} else if (problems.get(z).getProblem().toString().equals("comerr")) {
				request.setAttribute("x" + z, "商品問題");
			} else if (problems.get(z).getProblem().toString().equals("videoerr")) {
				request.setAttribute("x" + z, "影片問題");
			} else if (problems.get(z).getProblem().toString().equals("other")) {
				request.setAttribute("x" + z, "其他問題");
			}

//		
//	request.setAttribute("x"+z,problems.get(z).getProblem().toString());
			request.setAttribute("y" + z, problems.get(z).getMytextarea().toString());
			request.setAttribute("z" + z, problems.get(z).getRep().toString());

		}
		return "Response";
	}
	@RequestMapping(value = "/toselect", method = RequestMethod.GET)
	public String toselect(HttpServletRequest request, Model model) {
		Shop shop = new Shop();
		if(request.getSession().getAttribute("googleEmail")!=null) {
			shop.setUserid((String) request.getSession().getAttribute("googleEmail").toString());	
		}
		if(request.getSession().getAttribute("userid")!=null) {
			shop.setUserid((String) request.getSession().getAttribute("userid").toString());	
		}

		List<Shop> shops = userService.select(shop);

		System.out.println("   我要看結果   " + shops);

		for (int x = 0; x < shops.size(); x++) {
			System.out.println(shops.get(x));
			request.getSession().setAttribute("results" + x, shops.get(x));
		}

		return "select";
	}
}
