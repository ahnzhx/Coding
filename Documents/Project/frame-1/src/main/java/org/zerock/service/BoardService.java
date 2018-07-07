package org.zerock.service;

import java.util.List;

import org.zerock.domain.RoomVO;
import org.zerock.domain.boardVO;

public interface BoardService {
	public void regist_board(boardVO board) throws Exception;
	public boardVO get_board(int board_bno) throws Exception;
	public List<boardVO> listAll() throws Exception;
}
