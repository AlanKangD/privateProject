package com.care.root.member.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.care.root.VO.MemberVO;
import com.care.root.mybatis.MemberMapper;

@Primary
@Service
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired MemberMapper mapper;
	
	@Override
	public void register(MemberVO vo) {
		System.out.println(" id : " + vo.getId());
		System.out.println(" nick : " + vo.getNick());
		System.out.println(" pw :  " + vo.getPw());
		System.out.println(" select :  " + vo.getSelect());
		logger.info("### user register tryinnggg~~~ :: " + vo.getId() + vo.getNick() + vo.getPw() + vo.getSelect());
		
		mapper.register(vo);
	
	}

	@Override
	public String userCheck(MemberVO vo) {
		String check = mapper.userCheck(vo);
		
		System.out.println("###### mapper check :: " + check);
		
		
		return check;
	}

	
	
}
