package com.front.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.front.domain.MonitorDomain;

@RestController
@RequestMapping("/monitor")
public class MonitorController {
	private Logger logger = LoggerFactory.getLogger(MonitorController.class);
	
	@RequestMapping("/monitorIndex")
	public ModelAndView showMonitor(HttpServletRequest request, HttpServletResponse response, Model model){
		
		logger.info("***** into the monitorpage ******");
		
		List<MonitorDomain> list = new ArrayList<MonitorDomain>();
		MonitorDomain md = new MonitorDomain();
		md.setId("95:3306");
		md.setTaking(83);
		md.setBill(1100);
		md.setContainer(89);
		md.setHandon(154);
		md.setSignature(345);
		md.setTruck(510);
		
		MonitorDomain md1 = new MonitorDomain();
		md1.setId("95:3307");
		md1.setTaking(183);
		md1.setBill(100);
		md1.setContainer(189);
		md1.setHandon(54);
		md1.setSignature(1345);
		md1.setTruck(50);
		
		list.add(md);
		list.add(md1);
		
		model.addAttribute("monitorMainList", list);
		Map<String, String> map = new HashMap<String, String>();
		map.put("key", "value");
		model.addAttribute("map",map);
		return new ModelAndView("/monitor/monitorIndex");
	}

}
