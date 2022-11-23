package com.care.root.boardList.service;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.VO.BoardListVO;

public interface BoardListService {
	
	public void getAllBoardList(Model model);
	public void boardDetail(int boardNo, Model model);
	public void boardWriteSave(MultipartHttpServletRequest mul);
	
	
}
