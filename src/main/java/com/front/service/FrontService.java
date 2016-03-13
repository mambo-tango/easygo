package com.front.service;

import java.util.List;

import com.front.domain.Track;

public interface FrontService {
	public List<Track> loadAllTrack()throws Exception;
}
