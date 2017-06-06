package com.anahitagardens.anahita.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.anahitagardens.anahita.dao.ProductDao;
import com.anahitagardens.anahita.dao.UserDao;
import com.anahitagardens.anahita.dao.UserLoginDao;
import com.anahitagardens.anahita.model.User;
import com.anahitagardens.anahita.model.UserLogin;


@Controller
public class UserLoginController {

@Autowired
UserDao udao;	
@Autowired
UserLoginDao uldao;
@Autowired
ProductDao pdao;
	
	
	
	@RequestMapping("/Login")
	public String login(@RequestParam(value="error",required=false) String error,
			            @RequestParam(value="logout",required=false) String logout,
			            Model model,HttpSession session)
	{
		if(error!=null)
		model.addAttribute("error","Invalid Username or Password.. Please enter valid username and password");
		if(logout!=null)
		model.addAttribute("logout","Logged out successfully");		
		return "Login";
		
	}
	
	@RequestMapping("/Loginsuccess")
	  public String loginsuccess(HttpSession session,Model M) 
	  {
		System.out.println("Initiating loginsuccess ");
	    String userid = SecurityContextHolder.getContext().getAuthentication().getName();	
	    System.out.println("getingprincipaluserid"+userid);
	    User us=udao.viewOneUser(userid);
		System.out.println(us.getUsername() + " " +us.getUrole()+""+us.getUserEmail() );		
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
  
	    String page = "";

	    String role = "ROLE_USER";
	    for (GrantedAuthority authority : authorities) 
	    {		
	    	System.out.println("get user authority from authorities"+authority.getAuthority());

	      if (authority.getAuthority().equals(role)) {
	        session.setAttribute("UserLoggedIn", us.getUsername());
	        session.setAttribute("UserId", userid);     
	        page = "redirect:/Home";

	      }
	      else
	      {
	        session.setAttribute("AdminLoggedIn", us.getUsername());
	        session.setAttribute("AdminId", userid);
	        page = "redirect:/AdminHome";
	      }
	    }
	    return page;
	  }
		
	
		

	
}
