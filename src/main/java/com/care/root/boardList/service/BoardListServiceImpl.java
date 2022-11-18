package com.care.root.boardList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.VO.BoardListVO;
import com.care.root.boardList.boardListDAO.BoardListDAO;

@Primary
@Service
public class BoardListServiceImpl implements BoardListService {

	@Autowired BoardListDAO mapper;
	
	@Override
	public void getAllBoardList(Model model) {
		System.out.println("getAllBoardList 서비스Impl 호출");
		List<BoardListVO> vo = mapper.getAllBoardList();
		for(int i = 0; i < vo.size(); i++) {
			System.out.println("vo : " + vo.get(i).getBoardNo());
			System.out.println("vo : " + vo.get(i).getBoardWriter());
			System.out.println("vo : " + vo.get(i).getBoardTitle());
			System.out.println("vo : " + vo.get(i).getBoardContent());
			System.out.println("vo : " + vo.get(i).getBoardFeel());
			System.out.println("vo : " + vo.get(i).getBoardSysdate());
		}
		model.addAttribute("boardList", mapper.getAllBoardList());
	}
	
}
