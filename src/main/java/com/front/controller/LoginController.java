package com.front.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.front.domain.Track;
import com.front.service.FrontService;

@RestController  
@RequestMapping("/manage") 
public class LoginController {
	
	private Logger logger = LoggerFactory.getLogger(LoginController.class);

	private FrontService frontService;

	public void setFrontService(FrontService frontService) {
		this.frontService = frontService;
	}


	@RequestMapping(value = "/login")
    public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
    	
//    	request.getAttribute(arg0);
		
		
    	List<Track> list = new ArrayList<Track>(); 
    	try {
			list = frontService.loadAllTrack();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	model.addAttribute("list", list); 	
        return new ModelAndView("indexPage/index");
    }
	  
	     
}
