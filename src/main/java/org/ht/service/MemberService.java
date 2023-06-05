package org.ht.service;

import org.ht.model.MemberVO;

public interface MemberService {
	public void memreg(MemberVO member);
	public MemberVO login(MemberVO member);
}
