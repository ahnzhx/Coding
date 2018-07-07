package org.zerock.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberServiceImp;

@Repository
public class MemberdaoImpl implements Memberdao{
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImp.class);
	@Inject
	private SqlSession session;
	private static String namespace="org.zerock.mapper.MemberMapper";
	
	@Override
	public int checkmail(String email) {
		
		int result= session.selectOne(namespace+".checkmail",email);
		
		return session.selectOne(namespace+".checkmail",email);
	}
	@Override
	public void insertMember(MemberVO vo) {
		session.insert(namespace+".insert",vo);
		
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
	   public boolean loginCheck(MemberVO dto) {
	      String name= session.selectOne(namespace+".login_check",dto);
	      //조건식 ? true일 때의 값 : false일 때의 값
	      boolean data = (name==null) ? false : true;
	      System.out.println("data"+data);
	      return (name==null) ? false : true;
	      
	   }
	   @Override
	   public MemberVO viewMember(String email) {
	      return session.selectOne(namespace+".viewMember",email);
	      
	   }
	
}
