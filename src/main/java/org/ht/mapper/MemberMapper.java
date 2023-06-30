package org.ht.mapper;

import org.ht.model.MemberVO;

public interface MemberMapper {
	public void memreg(MemberVO member);
	public MemberVO login(MemberVO member);
	public boolean idChk(MemberVO member);
	
	//개인정보 조회 및 수정페이지
	public MemberVO readMember(String id);
		
	// 회원정보 수정
	public void memberModify(MemberVO member);
	
	//회원 정보 삭제
	public void memberRemove(MemberVO member);

}

