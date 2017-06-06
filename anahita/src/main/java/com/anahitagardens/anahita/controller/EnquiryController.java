package com.anahitagardens.anahita.controller;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anahitagardens.anahita.dao.EnquiryDao;
import com.anahitagardens.anahita.model.EnquiryForm;

@Controller
public class EnquiryController 
{
	@Autowired
	EnquiryDao enquirydao;

	@RequestMapping("/ContactUs")
	public ModelAndView gotoContactUsPage(HttpSession session) 
	{
		ModelAndView mv = new ModelAndView("ContactUs");
		mv.addObject("EnquiryForm", new EnquiryForm());
		return mv;
	}

	@RequestMapping(value = "/postEnquiry", method = RequestMethod.POST)
	public ModelAndView insert_user(@Valid @ModelAttribute("EnquiryForm") EnquiryForm ef, BindingResult bindingResult,HttpSession session) 
	{
		if (bindingResult.hasErrors()) 
		{
			ModelAndView mv=new ModelAndView("ContactUs");
            return mv;
                
		}
		else
		{
			
			System.out.println(".Save data into database");
			enquirydao.insertEnquiry(ef);
			System.out.println("data inserted");
			ModelAndView mv4 = new ModelAndView("EnquirySuccess");
			mv4.addObject("msg", ef.getEnFname() );
			return mv4;
			
		}
			
	}

		
		
	}
