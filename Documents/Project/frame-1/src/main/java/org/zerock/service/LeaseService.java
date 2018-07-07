package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.LikeVO;
import org.zerock.domain.RoomVO;


public interface LeaseService {
	public void regist(RoomVO room) throws Exception;
	public List<RoomVO> getAllLease_type() throws Exception; 
	public List<RoomVO> getLease_type(String lease_type) throws Exception;
	//諛� 醫낅쪟 寃��깋
	public List<RoomVO> getRoom_type(int room_type) throws Exception;
	//蹂댁쬆湲� 踰붿쐞濡� 寃��깋
	public List<RoomVO> getDeposit(int num1, int num2) throws Exception;
	//�썡�꽭 踰붿쐞濡� 寃��깋
	public List<RoomVO> getMonthly(int num1, int num2) throws Exception;

	//�룊�닔濡� 寃��깋
	public List<RoomVO> getSqm(int num1, int num2) throws Exception;
	//�럹�씠吏뺤쿂由�
	public List<RoomVO> listAll() throws Exception;
	public List<RoomVO> listCriteria (Criteria cri) throws Exception;
	public int listCountCriteria (Criteria cri) throws Exception;

	//showDetail db 가져오기
	public RoomVO getInfo(Integer rno) throws Exception;
	//좋아요 처리
	public void setLike(LikeVO like) throws Exception;
	public int getLikeData(int rno2) throws Exception;

}
