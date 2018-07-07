package org.zerock.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.zerock.controller.HomeController;
import org.zerock.domain.MemberVO;
import org.zerock.persistence.Lease_typeDAO;
import org.zerock.persistence.Memberdao;

@Service
public class MemberServiceImp implements MemberService{
	@Inject
	private Memberdao dao;
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImp.class);

	@Override
	public int checkmail(String email) {
			System.out.println("이메일체크서비스");
			return dao.checkmail(email);
	}

	@Override
	public void insertMember(MemberVO vo) {
		logger.info("service....");
		dao.insertMember(vo);
		
	}

	@Override
	public void deleteMember() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int updateMember() {
		// TODO Auto-generated method stub
		return 0;
	}

	  @Override
	   public boolean loginCheck(MemberVO dto, HttpSession session) {
	      logger.info("로그인체크서비스");
	      boolean result=dao.loginCheck(dto);
	      if(result) {//로그인 성공
	      //세션 변수에 값 저장
	         MemberVO dto2=viewMember(dto.getEmail());
	         //setAttribute(변수명, 값)
	         session.setAttribute("email", dto2.getEmail());
	         System.out.println(dto2.getEmail() + "메일");
	         session.setAttribute("name", dto2.getName());
	         System.out.println(dto2.getName() + "문도현 바보");
	      }
	      return result;
	   }

	   @Override
	   public void logout(HttpSession session) {
	      session.invalidate();
	      
	   }

	   @Override
	   public MemberVO viewMember(String email) {
	      return dao.viewMember(email);
	   }




}
