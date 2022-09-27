package com.care.root.VO;

import java.sql.Date;

public class BoardFaqVO {
	private int board_no;
	private String writer;
	private String checkSecrit;
	private String sendSelectType;
	private String sendTitle;
	private String Content;
	private String sendPw;
	private String FAQ_reply_ok;
	private Date FAQsysdate;
	
	public Date getFAQsysdate() {
		return FAQsysdate;
	}
	public void setFAQsysdate(Date fAQsysdate) {
		FAQsysdate = fAQsysdate;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getFAQ_reply_ok() {
		return FAQ_reply_ok;
	}
	public void setFAQ_reply_ok(String fAQ_reply_ok) {
		FAQ_reply_ok = fAQ_reply_ok;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCheckSecrit() {
		return checkSecrit;
	}
	public void setCheckSecrit(String checkSecrit) {
		this.checkSecrit = checkSecrit;
	}
	public String getSendSelectType() {
		return sendSelectType;
	}
	public void setSendSelectType(String sendSelectType) {
		this.sendSelectType = sendSelectType;
	}
	public String getSendTitle() {
		return sendTitle;
	}
	public void setSendTitle(String sendTitle) {
		this.sendTitle = sendTitle;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getSendPw() {
		return sendPw;
	}
	public void setSendPw(String sendPw) {
		this.sendPw = sendPw;
	}
	
	
	

}
