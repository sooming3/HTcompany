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
	
	// 회원가입
	@RequestMapping(value="/memberin", method = RequestMethod.POST)
		public String memberIn(MemberVO member) {
		System.out.println("member="+member);
		ms.memreg(member);
		return "member_loginpage";
		// 000회원님 viviana 멤버가 되신걸 환영합니다. -> 로그인페이지로 이동
	}
	
	// 로그인
	
}
