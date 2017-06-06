package com.anahitagardens.anahita.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.anahitagardens.anahita.dao.CategoryDao;
import com.anahitagardens.anahita.dao.ProductDao;
import com.anahitagardens.anahita.dao.SupplierDao;
import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.Product;
import com.google.gson.Gson;

@Controller
public class ProductController {
	@Autowired
	ProductDao pdao;
	@Autowired
	CategoryDao cdao;
	@Autowired
	SupplierDao sdao;
	
	
	@RequestMapping("/ShowProducts")
	public ModelAndView gotoProductsPage(HttpSession session) 
	{
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("ViewProducts");
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		return mv;
	} 
	
	@RequestMapping("/viewProductsByCategory")
	public ModelAndView viewOneCategoryProducts(@RequestParam("getId") String cat_id,HttpSession session) 
	{
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("ViewProducts");
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("catpassid", cat_id);
		return mv;
	}
	
	@RequestMapping("/zoomProduct")
	public ModelAndView viewProductDesc(@RequestParam("getId") String prod_id,HttpSession session) {
		Gson g = new Gson();
		String oneProduct = g.toJson(pdao.viewOneProduct(prod_id));
		ModelAndView mv = new ModelAndView("ZoomProduct");
		mv.addObject("modelOneProduct", oneProduct);
		return mv;
	}
	
	 
	

	@RequestMapping("/ManageProducts")
	public ModelAndView gotoManageProdPage(HttpSession session) {
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		String controllerSupList = sdao.viewSupplier();
		ModelAndView mv = new ModelAndView("ManageProduct");
		mv.addObject("manageProduct", new Product());
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "true");
		return mv;
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public ModelAndView insert_product(@Valid @ModelAttribute("manageProduct") Product prod,
			BindingResult bindingResult,HttpSession session) {
		if (bindingResult.hasErrors()) {
			String controllerProdList = pdao.viewProduct();
			String controllerCatList = cdao.viewCategory();
			String controllerSupList = sdao.viewSupplier();
			ModelAndView mv = new ModelAndView("ManageProduct");
			mv.addObject("modelProdList", controllerProdList);
			mv.addObject("modelCatList", controllerCatList);
			mv.addObject("modelSupList", controllerSupList);
			mv.addObject("check", "true");
			return mv;
		} else {
			System.out.println("Save data into database");
			pdao.insertProduct(prod);
			String path = "E:\\Project\\anahita\\src\\main\\webapp\\resources\\ProductImages\\";
			path = path + String.valueOf(prod.getpId()) + "" + ".jpg";
			MultipartFile fileDetails = prod.getpImage();
			if (!fileDetails.isEmpty()) {
				try {
					byte[] bytes = fileDetails.getBytes();
					System.out.println(bytes.length);
					FileOutputStream fos = new FileOutputStream(new File(path));
					BufferedOutputStream bs = new BufferedOutputStream(fos);
					bs.write(bytes);
					bs.close();
					fos.close();
					Thread.sleep(10000);
					System.out.println("File Uploaded Successfully");
				} catch (Exception e) {
					System.out.println("Exception Arised" + e);
				}
				System.out.println("data inserted");
				String controllerProdList = pdao.viewProduct();
				return new ModelAndView("redirect:/ManageProducts");
			}

			else {
				System.out.println("File is Empty not Uploaded");
				System.out.println("data not inserted");
				return new ModelAndView("redirect:/ManageProducts");
			}
		}

	}

@RequestMapping("/editproduct")
public ModelAndView editOneProduct(@RequestParam("getpid") String pid,HttpSession session)
{
	String controllerCatList = cdao.viewCategory();
	String controllerSupList = sdao.viewSupplier();
	String controllerProdList = pdao.viewProduct();
	ModelAndView mv = new ModelAndView("ManageProduct", "manageProduct", pdao.viewOneProduct(pid));
	mv.addObject("modelProdList", controllerProdList);
	mv.addObject("modelSupList", controllerSupList);
	mv.addObject("modelCatList", controllerCatList);
	mv.addObject("check", "false");
	return mv;
}


@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
public ModelAndView updateproduct(@ModelAttribute("manageProduct") Product prod,HttpSession session)
{
	pdao.updateProduct(prod.getpId(), prod);
    String path = "E:\\Project\\anahita\\src\\main\\webapp\\resources\\ProductImages\\";
	path = path + String.valueOf(prod.getpId()) + "" + ".jpg";
	MultipartFile filedet = prod.getpImage();
	if (!filedet.isEmpty()) {
		try {
			byte[] bytes = filedet.getBytes();
			System.out.println(bytes.length);
			File f = new File(path);
			if (f.exists()) 
			{
				f.delete();
				FileOutputStream fos = new FileOutputStream(f);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(bytes);
				bs.close();
				fos.close();
				Thread.sleep(10000);
				System.out.println("File Uploaded Successfully");
			}
		} catch (Exception e) {
			System.out.println("Exception Arised" + e);
		}
	} else 
	{
		System.out.println("File is Empty not Uploaded");
	}
	return new ModelAndView("redirect:/ManageProducts");
}

@RequestMapping(value = "/removeproduct/{Id}", method = RequestMethod.GET)
public ModelAndView removeProduct(@PathVariable("Id") String pId,HttpSession session) {
	pdao.deleteProduct(pId);
	return new ModelAndView("redirect:/ManageProducts");
}


}