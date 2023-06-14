package org.ht.service;

import org.ht.model.MemberVO;

public interface MemberService {
	public void memreg(MemberVO member);
	public MemberVO login(MemberVO member);
	
	//아이디 중복체크
	public boolean idChk(MemberVO member);
}
