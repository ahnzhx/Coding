package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.zerock.controller.HomeController;
import org.zerock.domain.mapVO;

@Repository
public class MapDaoImpl implements MapDao{
	@Inject
	private SqlSession session;
	private static String namespace="org.zerock.mapper.MapMapper";
	
	private static final Logger logger = LoggerFactory.getLogger(MapDaoImpl.class);
	@Override
	public List<mapVO> getmappoint() {
		logger.info("MapDAOImpl »£√‚");
		return session.selectList(namespace+".getmap");
	}

}
