package com.pawan.dummy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pawan.dummy.model.User;
import com.pawan.dummy.service.SecurityService;
import com.pawan.dummy.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SecurityService securityService;
	
	
	@RequestMapping(value="/registration", method= RequestMethod.GET)
	public String registrationPage(Model model){
		   
		   model.addAttribute("userForm", new User());
    	   return "registration";
	}
	
	
	@RequestMapping(value="/registration", method= RequestMethod.POST)
	public String registrationPage(@ModelAttribute("userForm") User user){
		
		  userService.save(user);
	      securityService.autoLogin(user.getUserName(), user.getPasswordConfirm());
		  return "redirect:/welcome";
	}
	
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String loginPage(Model model, String error, String logout){
		
		if(error != null){
            model.addAttribute("error", "Your username and password is invalid.");
		}
		
		if(logout != null){
            model.addAttribute("message", "You have been logged out successfully.");
		}
		
		  return "login";
	}
	
	@RequestMapping(value={"/","/welcome"}, method= RequestMethod.GET)
	public String welcomePage(){
		
		   return "welcome";
	}
	

}
