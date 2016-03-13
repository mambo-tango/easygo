package com.front.service.impl;

import java.util.List;

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
		
//		List<Track> list = new ArrayList<Track>(); 
//    	for(int i=1; i<=15; i++){
//        	Track t = new Track();
//        	t.setId(i+"id");
//        	t.setWaybillNo("waybillNo"+i);
//        	t.setOrgCode(i+"999999");
//        	t.setOpCode("310"+i);
//        	t.setCreateTime(new Date());
//        	t.setUploadTime(new Date());
//        	t.setErrorMessage("校验失败"+i);
//        	list.add(t); 
//    	}
//		
//		return list;
		return frontDbDao.loadAllTrack();
	}
	
}
