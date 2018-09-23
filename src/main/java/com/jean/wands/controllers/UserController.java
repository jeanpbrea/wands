package com.jean.wands.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jean.wands.models.User;
import com.jean.wands.services.UserService;
import com.jean.wands.validator.UserValidator;

@Controller
public class UserController {
	private final UserService userService;
	private final UserValidator userValidator;
	
	public UserController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
	
	@RequestMapping("/signup")
	public String registerForm(@ModelAttribute("user") User user) {
		return "/signup.jsp";
	}
	
	 @RequestMapping(value="/registration", method=RequestMethod.POST)
	 public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		 userValidator.validate(user, result);
		 if(result.hasErrors()) {
			 return "signup.jsp";
		 } else {
			 userService.registerUser(user);
			 session.setAttribute("userId", user.getId());
			 return "redirect:/wands";
		 }
	 }
	
	 @RequestMapping("/")
		public String loginForm(@ModelAttribute("user") User user) {
			return "/login.jsp";
		} 
	 
	 @RequestMapping(value="/login", method=RequestMethod.POST)
	 public String loginUser(@Valid @ModelAttribute("user") User user, BindingResult result, @RequestParam("emaillogin") String email, @RequestParam("passwordlogin") String password, Model model, HttpSession session) {
	     boolean isAuthenticated = userService.authenticateUser(email, password);
		 if(isAuthenticated) {
	    	 User u = userService.findByEmail(email);
	    	 session.setAttribute("userId", u.getId());
	    	 return "redirect:/wands";
	     } else {
	    	 model.addAttribute("error", "Invalid Credentials. Please try again.");
	    	 return "login.jsp";
	     }
	 }
}
