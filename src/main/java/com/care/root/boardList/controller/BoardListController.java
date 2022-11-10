package com.care.root.boardList.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.boardList.service.BoardListService;

@Controller
@RequestMapping("boardList")
public class BoardListController {

	@Autowired BoardListService bls;
	
	@GetMapping("boardList")
	public String getBoardList(Model model) {
		return "boardList/boardList";
	}

}