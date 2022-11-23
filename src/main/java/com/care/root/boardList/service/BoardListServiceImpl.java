package com.care.root.boardList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.VO.BoardListVO;
import com.care.root.VO.FileVO;
import com.care.root.boardList.boardListDAO.BoardListDAO;

@Primary
@Service
public class BoardListServiceImpl implements BoardListService {

	@Autowired BoardListDAO mapper;
	@Autowired FileService fs;
	
	@Override
	public void getAllBoardList(Model model) {
		System.out.println("getAllBoardList 서비스Impl 호출");
		/*
		for(int i = 0; i < vo.size(); i++) {
			System.out.println("보드리스트 각 보드 넘버 : " + vo.get(i).getBoardNo());
			model.addAttribute("fileData", mapper.boardFileList(vo.get(i).getBoardNo()));
		}
		*/
		List<FileVO> fvo = mapper.boardFileList();
		
		for(int i = 0; i < fvo.size(); i++ ) {
			System.out.println("보드넘버 : " + fvo.get(i).getBoardNo());
			System.out.println("스토리드 이름 : " + fvo.get(i).getFileStored());
		}
		
		model.addAttribute("boardList", mapper.getAllBoardList());
		model.addAttribute("fileData", mapper.boardFileList());
		
	}
	
	@Override
	public void boardDetail(int boardNo, Model model) {
		model.addAttribute("boardData", mapper.boardDetail(boardNo));
		model.addAttribute("fileData", mapper.boardFileSearch(boardNo));
	}

	// 단일 파일 아니고 다중으로 넣을거니까 파일 테이블에 인덱스 컬럼 추가 해야할 듯 ?
	// for문 돌려서 i번째 컬럼에 넣고
	// 게시판에는 무조건 0번째부터 나오게 (썸네일)
	// 메인페이지 각 글마다 넘버를 안보이게 해서 숨겨놓을까봐
	// 그거 메인 파일 불러올 때 board_no 으로 하면 찾기 편하자너
	
	@Override
	public void boardWriteSave(MultipartHttpServletRequest mul) {
		BoardListVO vo = new BoardListVO();
		FileVO fvo = new FileVO();
		
		vo.setBoardWriter(mul.getParameter("writer"));
		vo.setBoardTitle(mul.getParameter("title"));
		vo.setBoardContent(mul.getParameter("content"));
		vo.setBoardFeel(mul.getParameter("feel"));
		
		MultipartFile file = mul.getFile("boardImgPath");
		
		mapper.boardWriteSave(vo);
		
		if(file.getSize() != 0) {
			fvo.setBoardWriter(mul.getParameter("writer"));		// boardNo을 찾기 위함
			fvo.setBoardTitle(mul.getParameter("title"));		// boardNo을 찾기 위함
			fvo.setBoardContent(mul.getParameter("content"));	// boardNo을 찾기 위함
			fvo.setFileOrigin(fs.saveOriginalFile(file));
			fvo.setFileStored(fs.saveStoredFile(file));
			fvo.setFileSize(file.getSize());
			fvo.setFileDeleteYn("N");
		} else {
			fvo.setBoardWriter(mul.getParameter("writer"));		// boardNo을 찾기 위함
			fvo.setBoardTitle(mul.getParameter("title"));		// boardNo을 찾기 위함
			fvo.setBoardContent(mul.getParameter("content"));	// boardNo을 찾기 위함
			fvo.setFileOrigin("NONE");
			fvo.setFileStored("NONE");
			fvo.setFileSize(0);
			fvo.setFileDeleteYn("N");
		}
		mapper.boardFileSave(fvo);
	}

	

	
}
