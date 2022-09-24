package com.care.root.boardFaq.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.care.root.VO.BoardFaqVO;

@Primary
@Service
public class BoardFaqServiceImpl implements BoardFaqService{

	@Override
	public void writeSave(BoardFaqVO vo) {

		System.out.println("service vo 객체 확인 getCheckSecrit : " + vo.getCheckSecrit());
		System.out.println("service vo 객체 확인 getContent: " + vo.getContent());
		System.out.println("service vo 객체 확인 getSendPw: " + vo.getSendPw());
		System.out.println("service vo 객체 확인 getSendSelectType: " + vo.getSendSelectType());
		System.out.println("service vo 객체 확인 getSendTitle: " + vo.getSendTitle());
		System.out.println("service vo 객체 확인 getWriter: " + vo.getWriter());
	}

}
