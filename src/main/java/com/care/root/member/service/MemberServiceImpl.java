package com.care.root.member.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

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

	@SuppressWarnings("unused")
	@Override
	public int loginChk(Map<String, Object> dto) {
		MemberVO vo = new MemberVO();
		String checkId = (String) dto.get("sendId");
		String checkPw = (String) dto.get("sendPw");
		int loginStatus = 0;
		// 0 : error _ 아이디가 없거나 error , 1 : 관리자 로그인성공 , 2 : 유저 로그인 성공 , 3 : 패쓰워드 틀림 
		checkId = checkId.trim();
		
		vo =  mapper.getUserInfo(checkId);
		
		
		if(vo != null) {
			logger.info("####### LOGIN TRING~~ ");
			if(vo.getId().equals("admin")) {
				if(pwEncode.matches(checkPw, vo.getPw())) {   
					logger.info("#### HELLO ADMIN My GOD!");
					loginStatus = 1;
				}else {
					logger.info("#### login tried not password failed!! (admin!!!)");
					loginStatus = 3;
				}
			}else if(vo.getId().equals(checkId)) {
				if(pwEncode.matches(checkPw, vo.getPw())) {
					System.out.println("아이디도 존재하고 패쓰워드도 일치합니다!  ");
					loginStatus = 2;
				}else {
					logger.info("#### login tried not password failed!!");
					loginStatus = 3;
				}
			} else {
				System.out.println("error");
				logger.info("#### login error hava memberVO but failed!!");
				loginStatus = 0;
			}
		} else {
			System.out.println("아이디가 존재하지 않습니다!! ");
			loginStatus = 0;
		}
		
		return loginStatus;
			
	}
		
	

	
	
}
