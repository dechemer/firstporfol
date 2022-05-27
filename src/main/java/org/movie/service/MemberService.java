package org.movie.service;

import javax.servlet.http.HttpSession;

import org.movie.vo.MemberVO;

public interface MemberService {
	
	public void MemberInsert(MemberVO mvo);
	
	public MemberVO login(MemberVO mvo);
	
	public void logout(HttpSession session);
}
