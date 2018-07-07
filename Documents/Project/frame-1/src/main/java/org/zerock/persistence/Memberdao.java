package org.zerock.persistence;

import org.zerock.domain.MemberVO;

public interface Memberdao {
	public int checkmail(String email);
	public void insertMember(MemberVO vo);
	public void deleteMember();
	public int updateMember();
	public boolean loginCheck(MemberVO dto);
	public MemberVO viewMember(String email);
	
}
