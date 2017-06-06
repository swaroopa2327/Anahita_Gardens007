package com.anahitagardens.anahita.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anahitagardens.anahita.dao.CategoryDao;
import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.Product;
import com.anahitagardens.anahita.model.User;
import com.google.gson.Gson;

@Controller
public class CategoryController {
	@Autowired
	CategoryDao cdao;

	// fetch the json category list from database to controller and store it in
	// controller variable
	// retrieve form backing object (model-pojo class) and update the model
	// display view page and only add category, list table

	@RequestMapping("/ManageCategory")
	public ModelAndView gotoCategoryPage(HttpSession session) {
		String controllerCatList = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("ManageCategory", "Category", new Category());
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("check", "true");
		return mv;
	}

	// Add new category , the update model as above and display update view

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public ModelAndView insert_category(@Valid @ModelAttribute("Category") Category cat, BindingResult bindingResult,HttpSession session) 
	{
		boolean idmatch = false;
		boolean namematch = false;
		if (bindingResult.hasErrors()) 
		{
			String controllerCatList = cdao.viewCategory();
			ModelAndView mv = new ModelAndView("ManageCategory");
			mv.addObject("modelCatList", controllerCatList);
			mv.addObject("check", "true");
			return mv;
		} 
		else 
		{
			List<Category> list = cdao.ListCategory();
			for (Category cs : list) 
			{
				System.out.println(cs.getCatId() + " " + cat.getCatId());
				// check if condition entered category id already exists in database )
				if (cs.getCatId().equals(cat.getCatId()))
				{
					// yes3 block
					idmatch = true;
					System.out.println("Categoru Id exists.Enter Another category id");
					break;

				}
			}			
			if (idmatch == true) 
			{
				String controllerCatList = cdao.viewCategory();
				ModelAndView mv2 = new ModelAndView("ManageCategory");
				mv2.addObject("msg", "Sorry mate ! This Category ID already exists.Try another one !!!  ");
				mv2.addObject("modelCatList", controllerCatList);
				mv2.addObject("check", "true");
				return mv2;
			}
			else 
			{
				// now check for unique category name
				System.out.println("Category id  unique .now checking for unique Category Name.");
				for (Category cs : list) 
				{
					System.out.println(cs.getCatName() + " " + cat.getCatName());

					// if condition(entered category name exists in database)
					if (cs.getCatName().equals(cat.getCatName())) 
					{
						// yes4 block //display category page with change
						
						namematch = true;
						System.out.println("This Category already exists.Edit this category or choose new category name");
						break;
					}
				}
				if (namematch == true) 
				{
					String controllerCatList = cdao.viewCategory();
					ModelAndView mv3 = new ModelAndView("ManageCategory");
					mv3.addObject("msg", "This Category Name already exists.Edit this category or choose new category name");
					mv3.addObject("modelCatList", controllerCatList);
					mv3.addObject("check", "true");
					return mv3;
				} 
				else
				{
				
					// no4 block //save record //display success page

					System.out.println("Save data into database");
					cdao.insertCategory(cat);
					System.out.println("data inserted");
					String controllerCatList = cdao.viewCategory();
					return new ModelAndView("redirect:/ManageCategory");
				}
			}
		}
	}
				

	

	/**
	 * when one category has to be edited, fetch that particular category's
	 * details from database and pass it to the pojo class object.Update model
	 * and view .Display update category panel
	 */

	@RequestMapping("/editcategory")
	public ModelAndView editOneCategory(@RequestParam("getcid") String catId,HttpSession session) {
		Category cat2 = cdao.viewOneCategory(catId);
		String controllerCatList = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("ManageCategory", "Category", cat2);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("check", "false");
		return mv;
	}


	// Update category , update database, fetch updated database list , update
	// model and display view

	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public ModelAndView updatecategory(@ModelAttribute("Category") Category cat,HttpSession session)
	{
		cdao.updateCategory(cat);
		return new ModelAndView("redirect:/ManageCategory");
	}
	
	// delete category,update database, fetch updated database list , update
	// model and display view

	@RequestMapping(value = "/deletecategory/{Id}", method = RequestMethod.GET)
	public ModelAndView removeCategory(@PathVariable("Id") String catId,HttpSession session) {
		cdao.deleteCategory(catId);
		return new ModelAndView("redirect:/ManageCategory");
	}
	
	
	
	
	//@RequestMapping("/viewCategory")
	//public ModelAndView viewOneCategory(@RequestParam("getId") String cat_id,HttpSession session) {
		//Gson g = new Gson();
		//String oneCategory = g.toJson(cdao.viewOneCategory(cat_id));
		//ModelAndView mv = new ModelAndView("ViewProducts");
		//mv.addObject("catpassid", cat_id);
		//mv.addObject("modelOneCategory", oneCategory);
		//return mv;
	//}

}



