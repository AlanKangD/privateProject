package com.care.root.mybatis;

import com.care.root.VO.MemberVO;

public interface MemberMapper {
	
	public void register(MemberVO vo);

	public String userCheck(MemberVO vo);
	
	public MemberVO getUserInfo(String id);
	

}
