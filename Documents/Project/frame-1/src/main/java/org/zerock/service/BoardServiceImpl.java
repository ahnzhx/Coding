package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.zerock.domain.RoomVO;
import org.zerock.domain.boardVO;

import org.zerock.persistence.Boarddao;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private Boarddao dao;
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Override
	public void regist_board(boardVO board) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("로거왜안찍혀 ㅡㅡ");
		logger.info("보드서비스레지스트");
		dao.regist_board(board);
	}

	@Override
	public boardVO get_board(int board_bno) throws Exception {
		// TODO Auto-generated method stub

		return dao.get_board(board_bno);
	}

	@Override
	public List<boardVO> listAll() throws Exception {
		return dao.listAll();
	}

}
