package com.care.root.VO;

import java.sql.Date;

public class BoardListVO {
	
	// BoardVO
	private int boardNo;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	private String boardFeel;
	private Date boardSysdate;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardFeel() {
		return boardFeel;
	}
	public void setBoardFeel(String boardFeel) {
		this.boardFeel = boardFeel;
	}
	public Date getBoardSysdate() {
		return boardSysdate;
	}
	public void setBoardSysdate(Date boardSysdate) {
		this.boardSysdate = boardSysdate;
	}
	
	
	
}
