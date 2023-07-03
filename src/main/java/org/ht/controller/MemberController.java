package org.ht.controller;

import javax.servlet.http.HttpSession;

import org.ht.model.AdminVO;
import org.ht.model.MemberVO;
import org.ht.service.AdminService;
import org.ht.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MemberController {
	
	@Autowired
	MemberService ms;
	
	@Autowired
	AdminService as;
	
	//아이디 중복체크 구현 예정임~
	
	
	
	// 회원가입
	@RequestMapping(value="/memberin", method = RequestMethod.POST)
		public String memberIn(MemberVO member) {
		System.out.println("member="+member);
		ms.memreg(member);
		return "member_loginpage";
	}
	
	//로그인(회원 or 관리자)
	@RequestMapping(value = "/memberlogin", method = RequestMethod.POST)
	public String loginPost(MemberVO member, AdminVO admin, HttpSession session, Model model) {
	    AdminVO loggedInAdmin = as.adminLogin(admin);
	    if (loggedInAdmin != null) {
	    	 session.setAttribute("login", loggedInAdmin);
	    	 session.setAttribute("adminid", loggedInAdmin.getAdminid()); // adminid를 세션에 저장
	    	 model.addAttribute("msg", "관리자로 로그인 되었습니다.");
		     model.addAttribute("url", "/admin");
		     return "alert";
	    }
	    
	    MemberVO loggedInMember = ms.login(member);
	    if (loggedInMember == null) {
	        model.addAttribute("msg", "회원정보가 없습니다. 회원가입해주세요^^");
	        model.addAttribute("url", "/join");
	        return "alert";
	    } else {
	        session.setAttribute("login", loggedInMember);
	        session.setAttribute("id", loggedInMember.getId()); // assuming getId() returns the ID of the member
	      
	        String name = loggedInMember.getName();
	        model.addAttribute("msg", name + "님으로 로그인 되었습니다.");
	        model.addAttribute("url", "/");
	        System.out.println("session="+ name);
	        System.out.println("MemberVO=" + member);
	        return "alert";
	    }
	}
	
	
	//관리자페이지 이동
		@GetMapping("/admin")
		public String admin() {
			return "admin";
		}

	//로그아웃
	@RequestMapping(value="/logoutdo", method=RequestMethod.POST)
		public String logout(HttpSession session) {
	       session.invalidate();
	       return "redirect:/"; 
	}

	
	//회원 -> 개인정보 조회 및 수정페이지 / 관리자 -> 관리자전용페이지
	@RequestMapping(value = "/personalInfo", method = RequestMethod.GET)
	public String infoGET(HttpSession session, Model model) throws Exception {
	    String id = (String) session.getAttribute("id");
	    String adminid = (String) session.getAttribute("adminid");
	    System.out.println("adminid=" + adminid);

	    if (adminid != null && adminid.equals("VIadmin@naver.com")) {
	        // 세션에 저장된 adminid가 "VIadmin@naver.com"인 경우 admin.jsp로 이동
	        return "admin";
	    } else if (id == null) {
	        // 세션에 저장된 id가 null인 경우 login.jsp로 이동
	        return "redirect:/login";
	    } else {
	        // 세션에 저장된 id의 개인정보 조회 및 수정 페이지로 이동
	        MemberVO psInfo = ms.readMember(id);
	        
	        if (psInfo == null) {
	            return "redirect:/error";
	        }
	        model.addAttribute("psInfo", psInfo);
	        return "member/personalInfo";
	    }
	}
	
	

	// 회원정보 수정 
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String memberModify(MemberVO member, RedirectAttributes rttr) { // RedirectAttributes import 필요!
		ms.memberModify(member);
		rttr.addAttribute("id", member.getId());
		
		return "redirect:/"; 
	}
	
	 
	// 회원정보 삭제
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String memberRemove(MemberVO member, HttpSession session) {
	    ms.memberRemove(member);
	    if (session != null) { // 세션 존재 여부 확인
	        session.invalidate(); // 세션 무효화
	    }
	    return "redirect:/";
	}
	
	
}
