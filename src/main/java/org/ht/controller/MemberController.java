package org.ht.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.ht.model.MemberVO;
import org.ht.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


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
	}
	
	// 로그인
		@RequestMapping(value = "/memberlogin", method = RequestMethod.POST)
		public String loginPost (HttpSession session, MemberVO member) {
			//HttpSession session = new HttpSession();
	/*		System.out.println("controller="+member);
			System.out.println(ls.login(member));*/
			
			if(ms.login(member)==null) {
				return "member_joinpage";	// 회원이 아니면 회원가입페이지로 가도록
				} else {	
					session.setAttribute("login", ms.login(member)); // DB에서 끌고온 LoginVO 데이터를 login 변수에 저장하고 이를 세션에 최종저장 
					return "redirect:/";
				}
			}
		// 페이지 하나 더 만들기? 회원정보 수정 가능하도록
		// 관리자 로그인
	
		

		/* // 환자등록 중복유무 체크
		 @ResponseBody // ajax 값을 바로 jsp로 보내기 위해 사용
		 @PostMapping("/idChk")
		 public int idChk(String patientIdNum) throws Exception {
		 	int result = ps.already_patient_chk(patientIdNum);
		 	return result;
		 }
		*/
		
		/*@RequestMapping("/idcheck.do")
	    @ResponseBody
	    public Map<Object, Object> idcheck(@RequestBody String User_id) {
	        
	        int count = 0;
	        Map<Object, Object> map = new HashMap<Object, Object>();
	 
	        count = ms.idcheck(User_id);
	        map.put("cnt", count);
	 
	        return map;
	    }*/
		
		
		//https://melonpeach.tistory.com/45
		@ResponseBody
		@PostMapping("/checkDuplicateId")
	    public boolean idChk(MemberVO member) {
			boolean response = ms.idChk(member);
	        return response;
	    }
	 
		
}
