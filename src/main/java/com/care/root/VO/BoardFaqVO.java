package com.care.root.VO;

import java.sql.Date;

public class BoardFaqVO {
	private int FAQBoardNo;			//글번호 
	private String FAQWriter;       //글쓴이  
	private String FAQTitle;        //제목 
	private String FAQContent;      //본문 내용 
	private String FAQBoardType;    //글 타입 
	private String FAQSecuChk;      //비밀글 체크 
	private String FAQSecuPw;       //비밀글 패쓰워드 
	private String FAQReplyOk;      //답변 완료 체크 
	private Date FAQSysdate;        //글쓴날짜 
	private Date FAQReplySysdate;   //답변 날짜 
	public int getFAQBoardNo() {
		return FAQBoardNo;
	}
	public void setFAQBoardNo(int fAQBoardNo) {
		FAQBoardNo = fAQBoardNo;
	}
	public String getFAQWriter() {
		return FAQWriter;
	}
	public void setFAQWriter(String fAQWriter) {
		FAQWriter = fAQWriter;
	}
	public String getFAQTitle() {
		return FAQTitle;
	}
	public void setFAQTitle(String fAQTitle) {
		FAQTitle = fAQTitle;
	}
	public String getFAQContent() {
		return FAQContent;
	}
	public void setFAQContent(String fAQContent) {
		FAQContent = fAQContent;
	}
	public String getFAQBoardType() {
		return FAQBoardType;
	}
	public void setFAQBoardType(String fAQBoardType) {
		FAQBoardType = fAQBoardType;
	}
	public String getFAQSecuChk() {
		return FAQSecuChk;
	}
	public void setFAQSecuChk(String fAQSecuChk) {
		FAQSecuChk = fAQSecuChk;
	}
	public String getFAQSecuPw() {
		return FAQSecuPw;
	}
	public void setFAQSecuPw(String fAQSecuPw) {
		FAQSecuPw = fAQSecuPw;
	}
	public String getFAQReplyOk() {
		return FAQReplyOk;
	}
	public void setFAQReplyOk(String fAQReplyOk) {
		FAQReplyOk = fAQReplyOk;
	}
	public Date getFAQSysdate() {
		return FAQSysdate;
	}
	public void setFAQSysdate(Date fAQSysdate) {
		FAQSysdate = fAQSysdate;
	}
	public Date getFAQReplySysdate() {
		return FAQReplySysdate;
	}
	public void setFAQReplySysdate(Date fAQReplySysdate) {
		FAQReplySysdate = fAQReplySysdate;
	}
	
	
	
	

}
