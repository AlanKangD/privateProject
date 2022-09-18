package com.care.root.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

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
		logger.info("### user register tryinnggg~~~ :: " + vo.getId() + vo.getNick() + vo.getPw() + vo.getSelect());
		ms.register(vo);
		
		return "redirect:popupRedirect";
	}
	@GetMapping("/member/popupRedirect")
	public String popupRedirect() {
		return "member/popupRedirect";
	}
	

	@GetMapping("/member/memberCheck")
	@ResponseBody 
	public String memberChk(@RequestParam("id") String id) {
		MemberVO vo = new MemberVO();
		vo.setId(id);
		String chkOk = ms.userCheck(vo);
		
		return chkOk;
	}
	
	@PostMapping(value = "/member/loginChk", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String loginChk(@RequestBody Map<String, Object> dto, HttpSession session) {
			String id = (String)dto.get("sendId");
			String pw = (String)dto.get("sendPw");
			int loginStatus = 0;
			System.out.println(id + pw );
			loginStatus = ms.loginChk(dto);
			
			System.out.println("로그인 상태 체크 !!! : " + loginStatus);
			
			if(loginStatus == 1) {
				System.out.println("관리자님 환영합니다! ");
				session.setAttribute("adminSession", id);
			} else if(loginStatus == 2) {
				System.out.println("유저님 환영합니다  ");
				session.setAttribute("userSession", id);
			} else if(loginStatus == 3){
				System.out.println("비밀번호 틀림 ");
			}else {
				System.out.println("login error");
			}
		return loginStatus + "";
	}
	
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		System.out.println("전체 로그아웃 진행합니다 ! ");
		session.invalidate();
		
		return "redirect:/index";
	}
	
}
