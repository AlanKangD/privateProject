package com.care.root.member.service;

import java.util.Map;

import com.care.root.VO.MemberVO;

public interface MemberService {
	
	public void register(MemberVO vo);
	
	public String userCheck(MemberVO vo);
	
	public int loginChk(Map<String, Object> dto);
	
	
	

}
