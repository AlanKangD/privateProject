package com.care.root.boardFaq.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.VO.BoardFaqVO;
import com.care.root.boardFaq.boardFaqDAO.BoardFaqDAO;

@Primary
@Service
public class BoardFaqServiceImpl implements BoardFaqService{
	@Autowired BoardFaqDAO mapper;
	
	
	BCryptPasswordEncoder pwEncode;
	
	public BoardFaqServiceImpl() {
		pwEncode = new BCryptPasswordEncoder();
	}
	
	@Override
	public void writeSave(BoardFaqVO vo) {

		System.out.println("service vo 객체 확인 getCheckSecrit : " + vo.getCheckSecrit());
		System.out.println("service vo 객체 확인 getContent: " + vo.getContent());
		System.out.println("service vo 객체 확인 getSendPw: " + vo.getSendPw());
		System.out.println("service vo 객체 확인 getSendSelectType: " + vo.getSendSelectType());
		System.out.println("service vo 객체 확인 getSendTitle: " + vo.getSendTitle());
		System.out.println("service vo 객체 확인 getWriter: " + vo.getWriter());
		
		String secuPw = pwEncode.encode(vo.getSendPw());
		System.out.println(secuPw);
		vo.setSendPw(secuPw);
		
		mapper.writeSave(vo);
		
	}

	@Override
	public void getAllFaqList(Model model) {
		model.addAttribute("boardFaqList",mapper.getAllFaqList());
		
		
	}

}
