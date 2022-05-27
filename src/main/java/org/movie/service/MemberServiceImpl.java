package org.movie.service;

import javax.servlet.http.HttpSession;

import org.movie.dao.MemberDAO;
import org.movie.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired 
	MemberDAO dao;
	
	@Override
	public void MemberInsert(MemberVO mvo) {
		dao.MemberInsert(mvo);
	}
	
	@Override
	public MemberVO login(MemberVO mvo) {
		return dao.login(mvo);
	}
	
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
