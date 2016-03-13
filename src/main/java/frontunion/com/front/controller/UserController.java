package frontunion.com.front.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import frontunion.com.front.domain.User;

@RestController  
@RequestMapping("/user") 
public class UserController {
	 @RequestMapping("/{id}")  
     public User view(@PathVariable("id") Long id) {  
        User user = new User();  
        user.setId(id);  
        user.setName("testname");  
        return user;  
     }  
	  
	     
}