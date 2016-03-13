package com.front.dao;

import java.util.List;

import com.front.domain.Track;

public interface FrontDbDao {
	
	public List<Track> loadAllTrack()throws Exception;
}
