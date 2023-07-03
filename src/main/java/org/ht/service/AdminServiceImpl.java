package org.ht.service;

import org.ht.mapper.MemberMapper;
import org.ht.model.AdminVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	MemberMapper mm;
	
	//관리자 로그인
	public AdminVO adminLogin(AdminVO admin) {
		return mm.adminLogin(admin);
	}
}
