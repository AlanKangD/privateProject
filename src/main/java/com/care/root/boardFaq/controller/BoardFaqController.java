package com.care.root.boardFaq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.VO.BoardFaqVO;
import com.care.root.boardFaq.service.BoardFaqService;


@Controller
@RequestMapping("boardFaq")
public class BoardFaqController {

	@Autowired BoardFaqService bfs;
	
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
		String content = request.getParameter("sendContent");
		String checkSecrit = request.getParameter("checkSecrit");
		String sendSelectType = request.getParameter("sendSelectType");
		String sendPw = request.getParameter("sendPw");
		BoardFaqVO vo = new BoardFaqVO();
		
		vo.setCheckSecrit(checkSecrit);
		vo.setContent(content);
		vo.setSendPw(sendPw);
		vo.setSendSelectType(sendSelectType);
		vo.setSendTitle(title);
		vo.setWriter(writer);
		bfs.writeSave(vo);
		
		System.out.println("writer :: " + writer);
		System.out.println("title : " + title);
		System.out.println("content :: " + content);
		
		
		
		return "boardFaq/boardFaqWriteForm";
	}
}
