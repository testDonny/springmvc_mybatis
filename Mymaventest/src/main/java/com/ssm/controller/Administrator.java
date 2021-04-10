package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.po.Shop;
import com.ssm.po.problem;
import com.ssm.service.UserService;

@Controller
public class Administrator {
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/response", method = RequestMethod.POST)
	public String response(HttpServletRequest request) {
		
		for (int x = 0; x < request.getParameterValues("c").length; x++) {
			System.out.println(request.getParameterValues("c")[x]);
			System.out.println(request.getParameterValues("d")[x]);
			problem problem = new problem();
			Integer sid = Integer.parseInt(request.getParameterValues("c")[x]);
			problem.setId(sid);
			problem.setRep(request.getParameterValues("d")[x]);
			userService.problemresponse(problem);
		}

		return "redirect:tofeedback";
	}

	/**
	 * 
	 * 管理員回覆頁面
	 */

	@RequestMapping(value = "/tofeedback", method = RequestMethod.GET)
	public String tofeedback(HttpServletRequest request) {
		problem problem = new problem();
		List<problem> problems = userService.presponse(problem);
		for (int x = 0; x < problems.size(); x++) {

			if (problems.get(x).getProblem().toString().equals("usererr")) {
				request.setAttribute("y" + x, "帳號問題");
			} else if (problems.get(x).getProblem().toString().equals("comerr")) {
				request.setAttribute("y" + x, "商品問題");
			} else if (problems.get(x).getProblem().toString().equals("videoerr")) {
				request.setAttribute("y" + x, "影片問題");
			} else if (problems.get(x).getProblem().toString().equals("other")) {
				request.setAttribute("y" + x, "其他問題");
			}
			request.setAttribute("c" + x, problems.get(x).getId());
			request.setAttribute("x" + x, problems.get(x).getUserName().toString());
			request.setAttribute("z" + x, problems.get(x).getMytextarea().toString());
		}
		return "feedback";
	}
/**
 * 
管理員出貨查詢
 */
	@RequestMapping(value = "/toshipment", method = RequestMethod.GET)
	public String toshipment(HttpServletRequest request) {
		Shop shop1 = new Shop();
		List<Shop> shops = userService.selects(shop1);
		for (int y = 0; y < shops.size(); y++) {

			request.setAttribute("Cid" + y, shops.get(y).getCid());
			request.setAttribute("Cname" + y, shops.get(y).getCname());
			request.setAttribute("Price" + y, shops.get(y).getPrice());
			request.setAttribute("Quantity" + y, shops.get(y).getQuantity());
			request.setAttribute("Sum" + y, shops.get(y).getSum());
			request.setAttribute("Userid" + y, shops.get(y).getUserid());
			request.setAttribute("Shipment" + y, shops.get(y).getShipment());
			request.setAttribute("id" + y, shops.get(y).getId());


		}

		Shop shop2 = new Shop();
		List<Shop> shopss = userService.selectss(shop2);
		for (int x = 0; x < shopss.size(); x++) {

			request.setAttribute("Cids" + x, shopss.get(x).getCid());
			request.setAttribute("Cnames" + x, shopss.get(x).getCname());
			request.setAttribute("Prices" + x, shopss.get(x).getPrice());
			request.setAttribute("Quantitys" + x, shopss.get(x).getQuantity());
			request.setAttribute("Sums" + x, shopss.get(x).getSum());
			request.setAttribute("Userids" + x, shopss.get(x).getUserid());
			request.setAttribute("Shipments" + x, shopss.get(x).getShipment());
			request.setAttribute("ids" + x, shopss.get(x).getId());


		}
		System.out.println("測試" + request.getAttribute("ids0"));
		return "shipment";
	}

	/**
	 * 
	 *管理員出貨判斷
	 */
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(HttpServletRequest request) {
		int x = 0;
		int xx = 0;
		while (true) {
			if (request.getParameter("ids" + x) == null) {
				break;
			}

			System.out.println("ids" + x + request.getParameter("ids" + x));
			System.out.println("option" + x + request.getParameter("option" + x));

			if (request.getParameter("option" + x).equals("s1")) {
				request.setAttribute("s", "未出貨");
			}
			if (request.getParameter("option" + x).equals("s2")) {
				request.setAttribute("s", "已出貨");
			}

			System.out.println("測試   " + request.getAttribute("s"));
			Shop shop = new Shop();
			xx = Integer.parseInt(request.getParameter("ids" + x));
			shop.setId(xx);
			shop.setShipment((String) request.getAttribute("s"));

			userService.upselect(shop);
			x++;
		}

		return "redirect:toshipment";
	}

	/**
	 * 
	 * 到管理員登入頁面
	 */
	@RequestMapping(value = "/toadministrator", method = RequestMethod.GET)
	public String toadministrator(HttpServletRequest request) {

		return "administrator";
	}

	/**
	 * 
	 * 管理員是否登入成功
	 */
	@RequestMapping(value = "/administratorlogin", method = RequestMethod.POST)
	public String administratorlogin(HttpServletRequest request) {
		System.out.println("管理員帳號 " + request.getParameter("administrator"));
		System.out.println("密碼 " + request.getParameter("password"));
		request.getSession().setAttribute("administrator", "歡迎管理員大大");
		request.getSession().removeAttribute("logout");
		return "redirect:toindex";
	}
	/**
	 * 
	 * 管理員登出
	 */
	@RequestMapping(value = "/administratorlogout", method = RequestMethod.GET)
	public String administratorlogout(HttpServletRequest request) {
		request.getSession().setAttribute("logout", "管理員大大再見");
		request.getSession().removeAttribute("administrator");
		return "redirect:toindex";
	}
}
