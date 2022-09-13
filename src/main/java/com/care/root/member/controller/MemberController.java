package com.care.root.member.controller;

import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.root.VO.MemberVO;
import com.care.root.member.service.MemberService;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired MemberService ms;
	static int cnt = 0;
	
	
	@RequestMapping("/index")
	public String index() {
		logger.info("Member 접근 완료!!");
		return "main";
	}
	
	@GetMapping("/member/registerForm")
	public String registerForm() {
		return "member/registerForm";
	}
	
	@PostMapping("/member/register")
	public String register(MemberVO vo) {
		System.out.println(" id : " + vo.getId());
		System.out.println(" nick : " + vo.getNick());
		System.out.println(" pw :  " + vo.getPw());
		System.out.println(" select :  " + vo.getSelect());
		logger.info("### user register tryinnggg~~~ :: " + vo.getId() + vo.getNick() + vo.getPw() + vo.getSelect());
		ms.register(vo);
		
		return "redirect:/index";
	}
	

	@GetMapping("/member/memberCheck")
	@ResponseBody 
	public String memberChk(@RequestParam("id") String id) {
		System.out.println("id check :: " + id);
		MemberVO vo = new MemberVO();
		vo.setId(id);
		String chkOk = ms.userCheck(vo);
	     //System.out.println("값 확인 :: " + dto.get("id")); 
		System.out.println("service 에서 처리된 결과 값 출력  : " + chkOk);
		
		return chkOk;
	}
}
