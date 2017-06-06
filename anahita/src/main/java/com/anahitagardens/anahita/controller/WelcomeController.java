package com.anahitagardens.anahita.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anahitagardens.anahita.dao.CategoryDao;



@Controller
public class WelcomeController {
	@Autowired
	CategoryDao cdao;
	
	@RequestMapping(value={"/","/Home"})
	public ModelAndView  gotoHomePage(HttpSession httpSession)
	{   
		String controllerCatList = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("listAllCat", controllerCatList);
		return mv;
	}
	
	@RequestMapping("/AboutUs")
	public ModelAndView gotoAboutUsPage(HttpSession session)
	{
		return new ModelAndView( "AboutUs");
	}

	
	
	@RequestMapping("/AdminHome")
	public ModelAndView gotoAdminPage(HttpSession session) 
	{
		ModelAndView mv = new ModelAndView("AdminHome");
		return mv;
	} 
	

}

