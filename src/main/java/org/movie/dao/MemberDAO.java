package org.movie.dao;

import org.movie.vo.MemberVO;


public interface MemberDAO {
//	회원가입
	public void MemberInsert(MemberVO mvo);
//	로그인
	public MemberVO login(MemberVO mvo);
}
