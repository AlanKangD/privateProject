package com.care.root.boardFaq.boardFaqDAO;

import java.util.List;

import com.care.root.VO.BoardFaqVO;

public interface BoardFaqDAO {
	
	public void writeSave(BoardFaqVO vo);
	
	public List<BoardFaqVO> getAllFaqList();

	public BoardFaqVO getDetailFAQ(String FAQBoardNo);
}
