package com.care.root.member.service;

import com.care.root.VO.MemberVO;

public interface MemberService {
	
	public void register(MemberVO vo);
	public int userCheck(String chkId);

}
