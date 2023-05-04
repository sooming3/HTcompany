package org.ht.controller;

import org.ht.model.MemberVO;
import org.ht.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class MemberController {
	
	
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="/memberin", method = RequestMethod.POST)
		public String memberIn(MemberVO member) {
		System.out.println("aaa");
		System.out.println("member="+member);
		return "member_loginpage";
	
		
	}
	
}
