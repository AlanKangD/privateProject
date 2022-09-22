package com.care.root.boardFaq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.VO.BoardFaqVO;


@Controller
@RequestMapping("boardFaq")
public class BoardFaqController {

	
	@RequestMapping("/faqBoardlist")
	public String faqBoardList() {
		return "boardFaq/boradFaqList";
	}
	
	@GetMapping("/boardFaqWriteForm")
	public String oardFaqWriteForm() {
		return "boardFaq/boardFaqWriteForm";
	}
	@PostMapping("/boardFaqWrite")
	public String boardFaqWrite(HttpServletRequest request) {
		String writer  = request.getParameter("writer");
		String title = request.getParameter("sendTitle");
		System.out.println("writer :: " + writer);
		System.out.println("title : " + title);
		/*
		System.out.println("vo getWriter: " + vo.getWriter());
		System.out.println("vo getCheckSecrit: " + vo.getCheckSecrit());
		System.out.println("vo getSendSelectType: " + vo.getSendSelectType());
		System.out.println("vo getSendTitle: " + vo.getSendTitle());
		System.out.println("vo getContent: " + vo.getContent());
		System.out.println("vo getSendPw: " + vo.getSendPw());
		*/
		
		
		return "boardFaq/boardFaqWriteForm";
	}
}
