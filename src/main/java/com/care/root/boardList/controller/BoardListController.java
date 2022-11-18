package com.care.root.boardList.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.root.boardList.service.BoardListService;

@Controller
@RequestMapping("boardList")
public class BoardListController {

	@Autowired BoardListService bls;
	
	@RequestMapping("AllBoardList")
	public String getAllBoardList(Model model) {
		System.out.println("getAllBoardList 컨트롤러 호출");
		bls.getAllBoardList(model);
		return "boardList/boardList";
	}
	
	@GetMapping("boardWrite")
	public String getBoardWrite() {
		return "boardList/boardListWrite";
	}
	

}