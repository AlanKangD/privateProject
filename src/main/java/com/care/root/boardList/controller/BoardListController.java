package com.care.root.boardList.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.VO.BoardListVO;
import com.care.root.VO.FileVO;
import com.care.root.boardList.service.BoardListService;
import com.care.root.boardList.service.FileService;

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
	
	@RequestMapping("boardDetail")
	public String boardDetail(@RequestParam("boardNo") int boardNo, Model model) {
		System.out.println("디테일 컨트롤러 실행 " + boardNo);
		bls.boardDetail(boardNo, model);
		return "boardList/boardListDetail";
	}
	
	@GetMapping("boardWrite")
	public String getBoardWrite() {
		return "boardList/boardListWrite";
	}
	
	@PostMapping("boardWriteSave")
	public String boardWriteSave(MultipartHttpServletRequest mul, Model model) {
		bls.boardWriteSave(mul);
		model.addAttribute("msg", "글이 정상적으로 등록되었습니다.");
		model.addAttribute("url", "/boardList/AllBoardList");
		return "redirect";
	}
	
	@GetMapping("download")
	public void download(@RequestParam("file") String fileName, HttpServletResponse response) throws IOException {
		response.addHeader("Content-disposition", "attachment; fileName=" + fileName);
		File file = new File(FileService.IMAGE_REPO + "/" + fileName);
		FileInputStream fis = new FileInputStream(file);
		FileCopyUtils.copy(fis, response.getOutputStream());
		fis.close();
	}
	
	@RequestMapping("boardDelete")
	public String boardDelete(@RequestParam("boardNo") int boardNo, Model model) {
		bls.boardDelete(boardNo);
		model.addAttribute("msg", "글이 삭제되었습니다.");
		model.addAttribute("url", "/boardList/AllBoardList");
		return "redirect";
	}
	

	

}