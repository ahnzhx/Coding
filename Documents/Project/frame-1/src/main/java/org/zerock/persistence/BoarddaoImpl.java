package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.zerock.domain.RoomVO;
import org.zerock.domain.boardVO;
import org.zerock.service.MemberServiceImp;

@Repository
public class BoarddaoImpl implements Boarddao {
	private static final Logger logger = LoggerFactory.getLogger(BoarddaoImpl.class);
	@Inject
	private SqlSession session;
	private static String namespace="org.zerock.mapper.BoardMapper";
	@Override
	public void regist_board(boardVO board) throws Exception {
		// TODO Auto-generated method stub
		logger.info("보드레지스트dao");
		System.out.println("boardao");
		session.insert(namespace+".create",board);
	}

	@Override
	public boardVO get_board(int board_bno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".getInfo", board_bno);
	}

	@Override
	public List<boardVO> listAll() throws Exception {
		
		return session.selectList(namespace+".listAll");
	}
	
}
