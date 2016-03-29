package com.front.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.front.dao.FrontDbDao;
import com.front.domain.Track;
import com.front.service.FrontService;

public class FrontServiceImpl implements FrontService{
	
	private FrontDbDao frontDbDao;


	public void setFrontDbDao(FrontDbDao frontDbDao) {
		this.frontDbDao = frontDbDao;
	}

	@Override
	public List<Track> loadAllTrack() throws Exception {
		
		return frontDbDao.loadAllTrack();
	}
	
}
