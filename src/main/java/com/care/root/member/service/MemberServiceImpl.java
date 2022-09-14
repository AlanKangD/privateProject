package com.care.root.member.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.care.root.VO.MemberVO;
import com.care.root.mybatis.MemberMapper;

@Primary
@Service
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	BCryptPasswordEncoder pwEncode;
	
	@Autowired MemberMapper mapper;
	
	public MemberServiceImpl() {
		pwEncode = new BCryptPasswordEncoder();
	}
	
	@Override
	public void register(MemberVO vo) {
		logger.info("### user register tryinnggg~~~ :: " + vo.getId() + vo.getNick() + vo.getPw() + vo.getSelect());
		String id = vo.getId().trim();
		String securePw = pwEncode.encode(vo.getPw());
		vo.setId(id);
		vo.setPw(securePw);
		
		
		
		mapper.register(vo);
	
	}

	@Override
	public String userCheck(MemberVO vo) {
		
		
		String check = mapper.userCheck(vo);
		
		System.out.println("###### mapper check :: " + check);
		
		
		return check;
	}

	
	
}
