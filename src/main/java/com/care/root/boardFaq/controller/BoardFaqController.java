package com.care.root.boardFaq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String faqBoardList(Model model) {
		bfs.getAllFaqList(model);
		return "boardFaq/boradFaqList";
	}
	
	@GetMapping("/boardFaqWriteForm")
	public String boardFaqWriteForm() {
		
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
		vo.setFAQWriter(writer);
		vo.setFAQTitle(title);
		vo.setFAQContent(content);
		vo.setFAQSecuChk(checkSecrit);
		vo.setFAQSecuPw(sendPw);
		vo.setFAQBoardType(sendSelectType);
	
		bfs.writeSave(vo);
		
		
		
		return "boardFaq/boardFaqWriteForm";
	}
}
