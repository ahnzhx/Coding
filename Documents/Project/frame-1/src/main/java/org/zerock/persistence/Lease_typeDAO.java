package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.LikeVO;
import org.zerock.domain.RoomVO;

public interface Lease_typeDAO {

	//전체방출력
	public List<RoomVO> getAllLease_type() throws Exception;
	
	//전월세 검색
	public List<RoomVO> getLease_type(String lease_type) throws Exception;
	
	//방 종류 검색
	public List<RoomVO> getRoom_type(int room_type) throws Exception;
	//보증금 범위로 검색
	public List<RoomVO> getDeposit(int num1, int num2) throws Exception;
	//월세 범위로 검색
	public List<RoomVO> getMonthly(int num1, int num2) throws Exception;

	//평수로 검색
	public List<RoomVO> getSqm(int num1, int num2) throws Exception;
	
	//페이징 처리
	public List<RoomVO> listAll() throws Exception;
	public List<RoomVO> listPage(int page) throws Exception;
	public List<RoomVO> listCriteria (Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
	public void create(RoomVO vo) throws Exception;
	
	//showDetail db 가져오기
	public RoomVO getInfo(Integer rno) throws Exception;
	//좋아요 처리
	public void setLike(LikeVO like) throws Exception;
	public int getLikeData(int rno2) throws Exception;

}
