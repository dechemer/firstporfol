package org.movie.controller;


import javax.servlet.http.HttpSession;

import org.movie.service.MemberService;
import org.movie.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Autowired
	MemberService mservice;
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signupGET() {
		
		return "/member/signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signupPOST(MemberVO mvo) {
		mservice.MemberInsert(mvo);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET() {
		return "/member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO mvo, HttpSession session) {
		
		MemberVO login = mservice.login(mvo);
		
		if(login != null) {
			session.setAttribute("member", mservice.login(mvo));
			return "redirect:/";
		}else {
			return "redirect:/member/login";
		}
		
	}
	
	@RequestMapping(value="member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
}
