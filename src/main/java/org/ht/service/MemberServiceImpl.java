package org.ht.service;

import org.ht.mapper.MemberMapper;
import org.ht.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper mm;
	
	public void memreg(MemberVO member) {
		mm.memreg(member);
	}

	public MemberVO login(MemberVO member) {
		return mm.login(member);
	}

}

