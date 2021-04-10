package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.service.UserService;

@Controller
public class TheaterVersion {
	@Autowired
	private UserService userService;
	
	/**
	 * 
	 * 電影版音樂網站
	 */
	@RequestMapping(value = "/tomusic", method = RequestMethod.GET)
	public String music(HttpServletRequest request, Model model) {
		return "music";
	}

	/**
	 * 
	 * 電影版人物介紹
	 */

	@RequestMapping(value = "/tochar", method = RequestMethod.GET)
	public String chars(HttpServletRequest request, Model model) {
		model.addAttribute("chara", "c01");
		return "char";
	}

	/**
	 * 
	 * 電影版商品買賣
	 */

	@RequestMapping(value = "/tojporder", method = RequestMethod.GET)
	public String jporder(HttpServletRequest request, Model model) {

		return "jporder";
	}

}
