package com.care.root.boardList.boardListDAO;

import java.util.List;

import com.care.root.VO.BoardListVO;
import com.care.root.VO.FileVO;

public interface BoardListDAO {
	
	public List<BoardListVO> getAllBoardList();
	public BoardListVO boardDetail(int boardNo);
	public FileVO boardFileSearch(int boardNo);
	public List<FileVO> boardFileList();
	public void boardWriteSave(BoardListVO vo);
	public void boardFileSave(FileVO vo);
	public void boardDelete(int boardNo);
	public void fileDelete(int boardNo);

}
