package org.ht.controller;

import javax.servlet.http.HttpSession;

import org.ht.model.MemberVO;
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
	
	// 회원가입
	@RequestMapping(value="/memberin", method = RequestMethod.POST)
		public String memberIn(MemberVO member) {
		System.out.println("member="+member);
		ms.memreg(member);
		return "member_loginpage";
	}
	
	// 로그인
	//현재 로그인 코드에서 세션에 id 값을 저장하고 있지 않습니다. 세션에 login이라는 이름으로 MemberVO 객체를 저장하고 있습니다. 이 객체에서 사용자의 id를 가져올 수 있을 것입니다.
//이를 수정하여 사용자의 id를 세션에 저장하려면, 로그인이 성공하면 MemberVO 객체에서 id를 가져와 세션에 저장해야 합니다.
	/*@RequestMapping(value = "/memberlogin", method = RequestMethod.POST)
	public String loginPost(MemberVO member,HttpSession session, Model model) {
	    if (ms.login(member) == null) {
	        // 회원이 아닌 경우 alert 창을 띄우면서 회원가입 페이지로 이동
	    
	        model.addAttribute("msg", "회원정보가 없습니다. 회원가입해주세요^^");
	        model.addAttribute("url", "/join");
	        return "alert";
	    } else {
	        session.setAttribute("login", ms.login(member));
			String name = ((MemberVO) session.getAttribute("login")).getName();
	        model.addAttribute("msg", name + "님으로 로그인 되었습니다.");
			model.addAttribute("url", "/");
			System.out.println("session="+ name);
			System.out.println("MemberVOss" + member);
			
	        return "alert";
	    }
	}*/
	
	//로그인
	@RequestMapping(value = "/memberlogin", method = RequestMethod.POST)
	public String loginPost(MemberVO member,HttpSession session, Model model) {
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
	        System.out.println("MemberVOss" + member);
	        return "alert";
	    }
	}

	
	//로그아웃
	@RequestMapping(value="/logoutdo", method=RequestMethod.POST)
		public String logout(HttpSession session) {
	       session.invalidate();
	       return "redirect:/"; 
	}

	
	//개인정보 조회 및 수정페이지
	@RequestMapping(value = "/personalInfo", method = RequestMethod.GET) //post로 바꿔야 하는데... 
	public String infoGET(HttpSession session, Model model) throws Exception{

		String id = (String) session.getAttribute("id"); //세션 객체 안에 있는 ID정보 저장
	
		// Check if id is null
	    if(id == null) {
	        // redirect to error page or login page
	        return "redirect:/login";
	    }
		//서비스안의 회원정보보기 메서드 호출
		 MemberVO psInfo = ms.readMember(id);
		 
		 // Check if psInfo is null
		    if(psInfo == null) {
		        // redirect to error page or login page
		        return "redirect:/error";
		    }

		//정보저장 후 페이지 이동
		model.addAttribute("psInfo", psInfo);
		
	return "member/personalInfo";
	}
		

	// 회원정보 수정 
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String memberModify(MemberVO member, RedirectAttributes rttr) { // RedirectAttributes import 필요!
		ms.memberModify(member);
		rttr.addAttribute("id", member.getId());
		
		return "redirect:/"; // 수정 후 어떤 화면으로 이동
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
	

	//아이디 중복체크
	

	
	//관리자로그인	//https://kimvampa.tistory.com/136


	
	//관리자페이지 이동
	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}
	

	
	
}
