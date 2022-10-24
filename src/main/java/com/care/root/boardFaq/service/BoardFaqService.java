package com.care.root.boardFaq.service;

import org.springframework.ui.Model;

import com.care.root.VO.BoardFaqVO;

public interface BoardFaqService {
	
	public void writeSave(BoardFaqVO vo);
	
	public void getAllFaqList(Model model); 
	
	public void getDetailFAQ(Model model , String FAQBoardNo);

}
