package com.care.root.boardFaq.service;

import java.util.List;

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
		
		String secuPw = pwEncode.encode(vo.getFAQSecuPw());
		System.out.println(secuPw);
		vo.setFAQSecuPw(secuPw);
		
		mapper.writeSave(vo);
		
	}

	@Override
	public void getAllFaqList(Model model) {
		List<BoardFaqVO> vo = mapper.getAllFaqList();
		for(int i=0; i < vo.size(); i++) {
			System.out.println("vo :: " + vo.get(i).getFAQBoardType());
			System.out.println("vo :: " + vo.get(i).getFAQContent());
			System.out.println("vo :: " + vo.get(i).getFAQTitle());
			System.out.println("vo :: " + vo.get(i).getFAQSecuChk());
			
		}
		
		model.addAttribute("boardFaqList",mapper.getAllFaqList());
		
		
	}

	@Override
	public void getDetailFAQ(Model model , String FAQBoardNo) {
		BoardFaqVO vo =  mapper.getDetailFAQ(FAQBoardNo);
		System.out.println("board servuce" +vo.getFAQBoardNo() );
		model.addAttribute("FAQDetail", vo);
		
			
	}


	

}
