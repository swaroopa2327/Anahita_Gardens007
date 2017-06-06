package com.anahitagardens.anahita.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anahitagardens.anahita.dao.SupplierDao;
import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDao sdao;

	// fetch the json category list from database to controller and store it in
	// controller variable
	// retrieve form backing object (model-pojo class) and update the model
	// display view page and only add category, list table

	@RequestMapping("/ManageSuppliers")
	public ModelAndView gotoSupplierPage(HttpSession session) {
		String controllerSupList = sdao.viewSupplier();
		ModelAndView mv = new ModelAndView("ManageSupplier", "Supplier", new Supplier());
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "true");
		return mv;
	}

	// Add new category , the update model as above and display update view

	@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
	public ModelAndView insert_supplier(@Valid @ModelAttribute("Supplier") Supplier sup, BindingResult bindingResult,HttpSession session) 
	{
		boolean idmatch = false;
		boolean namematch = false;
		if (bindingResult.hasErrors()) 
		{
			String controllerSupList = sdao.viewSupplier();
			ModelAndView mv = new ModelAndView("ManageSupplier");
			mv.addObject("modelSupList", controllerSupList);
			mv.addObject("check", "true");
			return mv;
		} 
		else 
		{
			List<Supplier> list = sdao.ListSupplier();
			for (Supplier cs : list) 
			{
				System.out.println(cs.getsId() + " " + sup.getsId());
				// check if condition entered supplier id already exists in database )
				if (cs.getsId().equals(sup.getsId()))
				{
					// yes3 block
					idmatch = true;
					System.out.println("Supplier Id exists.Enter Another supplier id");
					break;

				}
			}			
			if (idmatch == true) 
			{
				String controllerSupList = sdao.viewSupplier();
				ModelAndView mv2 = new ModelAndView("ManageSupplier");
				mv2.addObject("msg", "Sorry mate ! This Supplier ID already exists.Try another one !!!  ");
				mv2.addObject("modelSupList", controllerSupList);					
				mv2.addObject("check", "true");
				return mv2;
			}
			else 
			{
				// now check for unique supplier name
				System.out.println("Supplier id  unique .now checking for unique Supplier Name.");
				for (Supplier cs : list) 
				{
					System.out.println(cs.getsName() + " " + sup.getsName());

					// if condition(entered supplier name exists in database)
					if (cs.getsName().equals(sup.getsName())) 
					{
						// yes4 block //display supplier page with change
						
						namematch = true;
						System.out.println("This Supplier already exists.Edit this supplier or choose new supplier name");
						break;
					}
				}
				if (namematch == true) 
				{
					String controllerSupList = sdao.viewSupplier();
					ModelAndView mv3 = new ModelAndView("ManageSupplier");
					mv3.addObject("msg", "This Supplier Name already exists.Edit this supplier or choose new supplier name");
					mv3.addObject("modelSupList", controllerSupList);
					mv3.addObject("check", "true");
					return mv3;
				} 
				else
				{
				
					// no4 block //save record //display success page

					System.out.println("Save data into database");
					sdao.insertSupplier(sup);
					System.out.println("data inserted");
					String controllerSupList = sdao.viewSupplier();
					return new ModelAndView("redirect:/ManageSuppliers");
				}
			}
		}
	}


	/**
	 * when one category has to be edited, fetch that particular category's
	 * details from database and pass it to the pojo class object.Update model
	 * and view .Display update category panel
	 */

	@RequestMapping("/editsupplier")
	public ModelAndView editOneSupplier(@RequestParam("getsid") String sId,HttpSession session) {
		Supplier sup2 = sdao.viewOneSupplier(sId);
		String controllerSupList = sdao.viewSupplier();
		ModelAndView mv = new ModelAndView("ManageSupplier", "Supplier", sup2);
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "false");
		return mv;
	}

	// Update category , update database, fetch updated database list , update
	// model and display view

	@RequestMapping(value = "/updateSupplier", method = RequestMethod.POST)
	public ModelAndView updatesupplier(@ModelAttribute("Supplier") Supplier sup,HttpSession session) {
		sdao.updateSupplier(sup);
		return new ModelAndView("redirect:/ManageSuppliers");
	}

	
	
	
	
	// delete category,update database, fetch updated database list , update
	// model and display view

	@RequestMapping(value = "/removesupplier/{Id}", method = RequestMethod.GET)
	public ModelAndView removeSupplier(@PathVariable("Id") String sId,HttpSession httpSession) {
		sdao.deleteSupplier(sId);
		return new ModelAndView("redirect:/ManageSuppliers");
	}


}
