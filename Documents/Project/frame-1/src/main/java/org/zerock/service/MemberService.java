package org.zerock.service;

import javax.servlet.http.HttpSession;

import org.zerock.domain.MemberVO;

public interface MemberService {
	public int checkmail(String email);
	public void insertMember(MemberVO vo);
	public void deleteMember();
	public int updateMember();
	public boolean loginCheck(MemberVO dto, HttpSession session);
	public void logout(HttpSession session);
	public MemberVO viewMember(String email);


}
