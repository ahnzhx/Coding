package org.map.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.zerock.controller.HomeController;
import org.zerock.domain.mapVO;
import org.zerock.persistence.Lease_typeDAO;
import org.zerock.persistence.MapDao;



@Service

public class MapServiceImpl implements MapService{
	@Inject
	
	private MapDao dao;
	
	private static final Logger logger = LoggerFactory.getLogger(MapServiceImpl.class);
	@Override
	public List<mapVO> getmappoint() {
		// TODO Auto-generated method stub
		logger.info("MapServiceImpl»£√‚");
		return dao.getmappoint();
	}
	
}