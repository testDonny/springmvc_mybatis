package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.po.Com;
import com.ssm.po.Shop;
import com.ssm.service.UserService;
@Controller
public class UserBuy {
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/toindex4", method = RequestMethod.GET)
	public String toindex4(HttpServletRequest request) {

		return "index4";
	}
	
	@RequestMapping(value = "/toindex4_1", method = RequestMethod.GET)
	public String toindex4_1(HttpServletRequest request) {
		
		int count = 0; // 計算買了多少次東西
	
		// 從新計算買了多少東西
		for (int x = 1; x <= 12; x++) {

			if (request.getSession().getAttribute("ids" + x) != null) {
				count++;
				request.getSession().setAttribute("shop", count);
				System.out.println("  現在次數:  " + request.getSession().getAttribute("shop"));
			} else {
				request.getSession().setAttribute("shop", count);
			}
		}

		return "index4_1";
	}

	// 判斷買東西
	@RequestMapping(value = "/shop", method = RequestMethod.POST)
	public String shop(HttpServletRequest request, HttpServletResponse response) {
		int finalResul = 0;
		System.out.println("value:   " + request.getParameter("value"));

		for (int x = 1; x <= 12; x++) {

			if (request.getParameter("value").equals("" + x)) {
//			if(request.getSession().getAttribute("ids"+x)==null) {
//		
//
//			}

				request.getSession().setAttribute("buy", request.getParameter("buy")); // 是否有買東西
				request.getSession().setAttribute("ids" + x, request.getSession().getAttribute("id" + x)); // 商品id
				request.getSession().setAttribute("names" + x, request.getSession().getAttribute("name" + x)); // 商品名稱
				request.getSession().setAttribute("prices" + x, request.getSession().getAttribute("price" + x)); // 商品價錢
				request.getSession().setAttribute("sum" + x, request.getParameter("sum")); // 商品數量

			}
		}
		int count = 0; // 計算買了多少次東西
		for (int x = 1; x <= 12; x++) {

			if (request.getSession().getAttribute("ids" + x) != null) {
				count++;
				request.getSession().setAttribute("shop", count);
				System.out.println("  現在次數:  " + request.getSession().getAttribute("shop"));
			}
			if (request.getSession().getAttribute("sum" + x) == null) {
				continue;
			} else {
				int relation1 = Integer.parseInt(request.getSession().getAttribute("sum" + x).toString());
				int relation2 = Integer.parseInt(request.getSession().getAttribute("prices" + x).toString());
				request.getSession().setAttribute("result" + x, relation1 * relation2);

				System.out.println(request.getSession().getAttribute("ids" + x));
				System.out.println(request.getSession().getAttribute("names" + x));
				System.out.println(request.getSession().getAttribute("prices" + x));
				System.out.println(request.getSession().getAttribute("sum" + x));
				System.out.println(request.getSession().getAttribute("userid"));
				System.out.println(request.getSession().getAttribute("result" + x));



				System.out.println("  計算結果   " + relation1 * relation2);

				finalResul += Integer.parseInt(request.getSession().getAttribute("result" + x).toString());

				System.out.println(" 現在多少錢    " + finalResul);
				request.getSession().setAttribute("finalResul", finalResul);
			}
		}

		return "index4_1";
	}
	@RequestMapping(value = "/toindexshop", method = RequestMethod.GET)
	public String toindexshop(HttpServletRequest request) {

		return "indexshop";
	}

//刪除
	@RequestMapping(value = "/shopdelete", method = RequestMethod.POST)
	public String shopdelete(HttpServletRequest request) {
		System.out.println("  現在次數:  " + request.getSession().getAttribute("shop"));
		int finalResul = 0;
		for (int x = 1; x <= 12; x++) {
			if (request.getParameter("value").equals(String.valueOf(x))) {
				request.getSession().removeAttribute("ids" + x);
				request.getSession().removeAttribute("names" + x);
				request.getSession().removeAttribute("prices" + x);
				request.getSession().removeAttribute("sum" + x);
				request.getSession().removeAttribute("result" + x);
				request.getSession().removeAttribute("finalResul");

			}
			// 刪除完從新計算現在多少錢
			if (request.getSession().getAttribute("sum" + x) == null) {
				continue;
			} else {
				int relation1 = Integer.parseInt(request.getSession().getAttribute("sum" + x).toString());
				int relation2 = Integer.parseInt(request.getSession().getAttribute("prices" + x).toString());
				request.getSession().setAttribute("result" + x, relation1 * relation2);
				System.out.println("  計算結果   " + relation1 * relation2);

				finalResul += Integer.parseInt(request.getSession().getAttribute("result" + x).toString());

				System.out.println(" 現在多少錢    " + finalResul);
				request.getSession().setAttribute("finalResul", finalResul);
			}
		}
		return "indexshop";
	}

//結帳
	
	@RequestMapping(value = "/shopss", method = RequestMethod.POST)
	public String shopss(HttpServletRequest request, Model model) {
		for (int x = 1; x <= 12; x++) {
			System.out.println(request.getSession().getAttribute("ids" + x));
			System.out.println(request.getSession().getAttribute("names" + x));
			System.out.println(request.getSession().getAttribute("prices" + x));
			System.out.println(request.getSession().getAttribute("sum" + x));
			if (request.getSession().getAttribute("ids" + x) == null) {

				continue;
			}
			Shop shop = new Shop();
			String Cid = (String) request.getSession().getAttribute("ids" + x).toString();
			String Cname = (String) request.getSession().getAttribute("names" + x).toString();
			String Price = (String) request.getSession().getAttribute("prices" + x).toString();
			String sum = (String) request.getSession().getAttribute("sum" + x).toString();
			String result = (String) request.getSession().getAttribute("result" + x).toString();

			shop.setCid(Cid);
			shop.setCname(Cname);
			shop.setPrice(Price);
			shop.setQuantity(sum);
			shop.setSum(result);
			if(request.getSession().getAttribute("googleEmail")!=null){
				shop.setUserid((String)request.getSession().getAttribute("googleEmail").toString());
			}
			if(request.getSession().getAttribute("userid")!=null){
				shop.setUserid((String) request.getSession().getAttribute("userid").toString());	
			}
			userService.shop(shop);
			// 把拿到的結果插入之料庫

			System.out.println("v :" + request.getParameter("v"));
			if (request.getParameter("v") != null) {
				model.addAttribute("v", request.getParameter("v"));
			}
			// 送參數過去顯示結帳成功

			request.getSession().removeAttribute("ids" + x);
			request.getSession().removeAttribute("names" + x);
			request.getSession().removeAttribute("prices" + x);
			request.getSession().removeAttribute("sum" + x);
			request.getSession().removeAttribute("result" + x);
			request.getSession().removeAttribute("finalResul");
			// 東西買完了,清掉剛剛買的東西

		}
		return "index4";
	}
	
}
