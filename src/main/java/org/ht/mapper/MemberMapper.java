package org.ht.mapper;

import org.ht.model.MemberVO;

public interface MemberMapper {
	public void memreg(MemberVO member);
	public MemberVO login(MemberVO member);
}
