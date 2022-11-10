package com.care.root.mybatis;

import com.care.root.VO.MemberVO;

public interface MemberMapper {
	
	public void register(MemberVO vo);

	public String memberCheck(MemberVO vo);
	
	public MemberVO getMemberInfo(String id);
	

}
