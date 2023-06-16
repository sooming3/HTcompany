package org.ht.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
/*	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	*//**
	 * Simply selects the home view to render by returning its name.
	 *//*
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}*/
	
	// 메인으로 이동하기
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String main() {
	return "index";
	}
	
	// 회원가입으로 이동하기
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String join() {
	return "member_joinpage";
	}
	
	// 로그인으로 이동하기
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
	return "member_loginpage";
	}
	
	// 상세페이지로 이동하기
	@RequestMapping(value="/product_r", method = RequestMethod.GET)
	public String product() {
	return "/product_r";
	}
	
	// 상세페이지로 이동하기
	@RequestMapping(value="/detail", method = RequestMethod.GET)
	public String detail() {
	return "/product_detail";
	}
	
	// 리스트로 이동하기
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list() {
	return "Board_list";
	}
	
	// 리스트로 이동하기
	@RequestMapping(value="/answer", method = RequestMethod.GET)
	public String answer() { 
	return "Board_answer";
	}
	
	// 리스트로 이동하기
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public String view() {
	return "Board_list_view";
	}
	
	// 리스트로 이동하기
	@RequestMapping(value="/question", method = RequestMethod.GET)
	public String question() {
	return "Board_question";
	}
	
/*	// 카트로 이동하기
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart() { 
	return "cartPage";
	}*/

}
