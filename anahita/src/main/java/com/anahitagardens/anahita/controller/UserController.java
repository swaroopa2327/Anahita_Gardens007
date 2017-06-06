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

import com.anahitagardens.anahita.dao.UserDao;
import com.anahitagardens.anahita.model.User;
import com.google.gson.Gson;

@Controller
public class UserController 
{
	@Autowired
	UserDao udao;

	@RequestMapping("/SignUp")
	public ModelAndView gotoSignUpPage(HttpSession session) 
	{
		ModelAndView mv = new ModelAndView("SignUp");
		mv.addObject("User", new User());
		return mv;
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public ModelAndView insert_user(@Valid @ModelAttribute("User") User u, BindingResult bindingResult,HttpSession session) 
	{
		System.out.println("Initiating ");
		ModelAndView mv = new ModelAndView("SignUpSuccess");
		boolean usermatch = false;
		boolean passmatch = false;
		boolean emailmatch = false;
		if (bindingResult.hasErrors()) 
		{
			// yes1 block //display signup page
			System.out.println("binding errors exist");
			ModelAndView mv1 = new ModelAndView("SignUp");
			mv1.addObject("msg", "Sorry mate ! Verify if you have filled all the required fields correctly  ");
			return mv1;

		}

		else 
		{
			// no1 binding errors block // then check if(user pswd ==confirm pswd)
			if (u.getUserpswd().equals(u.getConfirmPswd()))

			{
				// yes2 block //fetch list from database //iterate for unique // username
				System.out.println("passwords match");
				passmatch = true;
				List<User> list = udao.ListUser();
				for (User us : list) 
				{
					System.out.println(us.getUsername() + " " + u.getUsername());
					// check if condition ( usernames in list ==entered username )
					if (us.getUsername().equals(u.getUsername())) 
					{
						// yes3 block
						usermatch = true;

						// display signup page with change user name msg
						System.out.println("User name exists.try another username");
						break;

					}
				}
				if (usermatch == true) 
				{
					ModelAndView mv2 = new ModelAndView("SignUp");
					mv2.addObject("msg2", "Sorry mate ! This username already exists.Try another one !!!  ");
					return mv2;
				}

				else 
				{
					// no3 block //fectch list from database//iterate for user// email
					System.out.println("User name is unique.now checking for unique emails.");
					for (User us : list) 
					{
						System.out.println(us.getUserEmail() + " " + u.getUserEmail());

						// if condition(user mail = database email)
						if (us.getUserEmail().equals(u.getUserEmail())) 
						{
							// yes4 block //display signup page with change
							// email msg
							emailmatch = true;
							System.out.println("email already exists.try another email");
							break;
						}
					}

					if (emailmatch == true) 
					{
						ModelAndView mv3 = new ModelAndView("SignUp");
						mv3.addObject("msg3", "This email is already registered.Try another one !");
						return mv3;
					} else
					{
						// no4 block //save record //display success page

						System.out.println("email is unique.Save data into database");
						udao.insertUser(u);
						System.out.println("data inserted");
						ModelAndView mv4 = new ModelAndView("SignUpSuccess");
						mv4.addObject("msg", "Dear" + " " + u.getUserFname() + ", " + " "
								+ "You have been successfully registered.");
						return mv4;
					}
				}

			}

			else 
			{
				if (passmatch == false) 
				{
					// no2 block
					// display signup page with msg pswd are not equal
					System.out.println("passwords dont match");
					ModelAndView mv1 = new ModelAndView("SignUp");
					mv1.addObject("msg1", "Oops! The passwords don't match ! Type the same password  ");
					return mv1;
				}

			}

		}
		return mv;

	}
	
	
	@RequestMapping("/ShowallUsers")
	public ModelAndView gotoUserPage() 
	{
		String alluserlist = udao.viewUsers();
		ModelAndView mv = new ModelAndView("ManageUser");
		mv.addObject("modeluserlist", alluserlist);
		return mv;
	} 
	
	@RequestMapping("/viewOne")
	public ModelAndView viewauser(@RequestParam("getId") String user_name,HttpSession session) {
		Gson g = new Gson();
		String oneUser = g.toJson(udao.viewOneUser(user_name));
		ModelAndView mv = new ModelAndView("ShowOneUser");
		mv.addObject("oneUserModel", oneUser);
		return mv;
	}
	
	
}
