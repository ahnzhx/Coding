package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.LikeVO;
import org.zerock.domain.RoomVO;
@Repository
public class Lease_typeDAOImpl implements Lease_typeDAO {

	@Inject
	private SqlSession session;
	private static String namespace="org.zerock.mapper.LeaseMapper";

	@Override
	public List<RoomVO> getAllLease_type() throws Exception {
		
		return session.selectList(namespace+".getAllLease_type");
	}

	@Override
	public List<RoomVO> getLease_type (String lease_type) throws Exception {
		
		return session.selectList(namespace+".getLease_type", lease_type);
	}


	@Override
	public List<RoomVO> getRoom_type(int room_type) throws Exception {
		
		return session.selectList(namespace+".getRoom_type");
	}

	@Override
	public List<RoomVO> getDeposit(int num1, int num2) throws Exception {
		
		return session.selectList(namespace+".getDeposit");
	}

	@Override
	public List<RoomVO> getMonthly(int num1, int num2) throws Exception {
		
		return session.selectList(namespace+".getMonthly");
	}

	@Override
	public List<RoomVO> getSqm(int num1, int num2) throws Exception {
		
		return session.selectList(namespace+".getSqm");
	}

	@Override
	public List<RoomVO> listCriteria(Criteria cri) throws Exception {
		
		return session.selectList(namespace+".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		
		return session.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<RoomVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page =1;
		}
		page = (page - 1)*10;
		return session.selectList(namespace+".listPage",page);
	}

	@Override
	public List<RoomVO> listAll() throws Exception {
		
		return session.selectList(namespace+".listAll");
	}
	@Override
	public void create(RoomVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}

	@Override
	public RoomVO getInfo(Integer rno) throws Exception {
		return session.selectOne(namespace+".getInfo", rno);
	}

	@Override
	public void setLike(LikeVO like) throws Exception {
		session.insert(namespace+".setLike", like);
		
	}

	@Override
	public int getLikeData(int rno2) throws Exception {
		return session.selectOne(namespace+".getLikeData", rno2);
	}
	
}
