package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.LikeVO;
import org.zerock.domain.RoomVO;
import org.zerock.persistence.Lease_typeDAO;

@Service
public class LeaseServiceImpl implements LeaseService{

	@Inject
	private Lease_typeDAO dao;
	
	@Override
	public List<RoomVO> getAllLease_type() throws Exception {
		
		return dao.getAllLease_type();
	}

	@Override
	public List<RoomVO> getLease_type(String lease_type) throws Exception {
		
		return dao.getLease_type(lease_type);
	}

	@Override
	public List<RoomVO> getRoom_type(int room_type) throws Exception {
		
		return dao.getRoom_type(room_type);
	}

	@Override
	public List<RoomVO> getDeposit(int num1, int num2) throws Exception {
		
		return dao.getDeposit(num1, num2);
	}

	@Override
	public List<RoomVO> getMonthly(int num1, int num2) throws Exception {
		
		return dao.getDeposit(num1, num2);
	}

	@Override
	public List<RoomVO> getSqm(int num1, int num2) throws Exception {
		
		return dao.getSqm(num1, num2);
	}

	@Override
	public List<RoomVO> listCriteria(Criteria cri) throws Exception {
		
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}

	@Override
	public List<RoomVO> listAll() throws Exception {
		
		return dao.listAll();
	}

	@Override
	public void regist(RoomVO room) throws Exception {
		dao.create(room);
		
	}
	@Override
	public RoomVO getInfo(Integer rno) throws Exception {
		
		return dao.getInfo(rno);
	}

	@Override
	public void setLike(LikeVO like) throws Exception {
		 dao.setLike(like);
		
	}

	@Override
	public int getLikeData(int rno2) throws Exception {
		return dao.getLikeData(rno2);
	}


}
