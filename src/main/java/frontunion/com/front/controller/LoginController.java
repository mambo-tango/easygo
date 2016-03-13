package frontunion.com.front.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import frontunion.com.front.domain.Track;
import frontunion.com.front.service.FrontService;

@RestController  
@Controller
@RequestMapping("/manage") 
public class LoginController {

	private FrontService frontService;

	public void setFrontService(FrontService frontService) {
		this.frontService = frontService;
	}


	@RequestMapping(value = "/login")
    public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
    	
    	System.out.println("into the init Method");
    	List<Track> list = new ArrayList<Track>(); 
    	try {
			list = frontService.loadAllTrack();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
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
    	
    	model.addAttribute("list", list); 	
        return new ModelAndView("manage/indexSearch");
    }
	  
	     
}
