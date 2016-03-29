package com.front.scheduler;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FirstScheduler {

	Logger logger = LoggerFactory.getLogger(FirstScheduler.class);
	
	public void saySomething(){
		logger.error("now is : "+new Date());
	}
}
