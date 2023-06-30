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
	
	//아이디 중복체크
	public boolean idChk(MemberVO member) {
        // Call the mapper method to check if the ID exists in the database
        boolean response = mm.idChk(member);

        return response;
    }
	

	//개인정보 조회 및 수정페이지
	public MemberVO readMember(String id) {
		// You can add input validation and error handling here
	    if(id == null) {
	        throw new IllegalArgumentException("ID cannot be null");
	    }
		return mm.readMember(id);
	}
			
	// 회원정보 수정
	public void memberModify(MemberVO member) {
		mm.memberModify(member);
		
	}
	
	//회원 정보 삭제
	public void memberRemove(MemberVO member) {
		mm.memberRemove(member);
	}
	
}

