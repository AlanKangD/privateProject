package com.care.root.VO;

public class FileVO {
	
	// FileVO
	private int fileNo;
	private int boardNo;
	private String fileOrigin;
	private String fileStored;
	private long fileSize;
	private String fileDeleteYn;
	private String boardWriter;		// boardNo 값을 찾기 위함
	private String boardTitle;		// boardNo 값을 찾기 위함
	private String boardContent;	// boardNo 값을 찾기 위함
	
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getFileOrigin() {
		return fileOrigin;
	}
	public void setFileOrigin(String fileOrigin) {
		this.fileOrigin = fileOrigin;
	}
	public String getFileStored() {
		return fileStored;
	}
	public void setFileStored(String fileStored) {
		this.fileStored = fileStored;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getFileDeleteYn() {
		return fileDeleteYn;
	}
	public void setFileDeleteYn(String fileDeleteYn) {
		this.fileDeleteYn = fileDeleteYn;
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
	


}
