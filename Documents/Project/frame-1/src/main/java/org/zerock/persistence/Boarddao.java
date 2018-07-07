package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.RoomVO;
import org.zerock.domain.boardVO;

public interface Boarddao {
	public void regist_board(boardVO room) throws Exception;
	public boardVO get_board(int board_bno) throws Exception;
	public List<boardVO> listAll() throws Exception;
}
