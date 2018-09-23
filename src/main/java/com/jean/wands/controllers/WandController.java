package com.jean.wands.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jean.wands.models.User;
import com.jean.wands.models.Wand;
import com.jean.wands.services.UserService;
import com.jean.wands.services.WandService;

@Controller
public class WandController {
	private final WandService wandService;
	private final UserService userService;
	
	public WandController(WandService wandService, UserService userService) {
		this.wandService = wandService;
		this.userService = userService;
	}
	
	@RequestMapping("/wands")
	public String index(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		User users = userService.findUserById(userId);
		List<Wand> wands = wandService.allWand();
		model.addAttribute("wands", wands);
		model.addAttribute("users", users);
		return "dashboard.jsp";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/wands/new")
	public String create(HttpSession session, Model model, @ModelAttribute("newwand") Wand wand) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		model.addAttribute("user", user);
		return "/new.jsp";
	}
	
	@RequestMapping(value="/createwand", method=RequestMethod.POST)
	public String createc(@Valid @ModelAttribute("newwand") Wand wand, BindingResult result) {
		if(result.hasErrors()) {
			return "new.jsp"; 
		} else {
			wandService.createWand(wand);
			return "redirect:/wands";
		}
	}
	 @RequestMapping("/edit/{id}")
	 public String edit(@PathVariable("id") Long id, Model model, @ModelAttribute("editwand") Wand wand, HttpSession session) {
		 Long userId = (Long) session.getAttribute("userId");
		 User user = userService.findUserById(userId);
		 Wand wandedit = wandService.findWand(id);
		 model.addAttribute("wand", wandedit);
		 model.addAttribute("user", user);
		 return "edit.jsp";
	 }
	 
	 @RequestMapping(value="/edit/{id}", method=RequestMethod.PUT)
	 public String update(@Valid @ModelAttribute("editwand") Wand wand, BindingResult result, @PathVariable("id") Long id, Model model) {
		 if (result.hasErrors()) {
			 Wand wandedit = wandService.findWand(id);
			 model.addAttribute("wand", wandedit);
			 return "edit.jsp";
		 } else {
			 wandService.updateWand(wand);
			 return "redirect:/wands";
		 }
	 }
	 
	 @RequestMapping(value="/delete/{id}")
	 public String destory(@PathVariable("id") Long id) {
		 wandService.deleteWand(id);
		 return "redirect:/wands";
	 }
	 
		
		@RequestMapping("/show/{id}")
		public String show(HttpSession session, @PathVariable("id") Long id, Model model) {
			Wand wandshow = wandService.findWand(id);
			Long userId = (Long) session.getAttribute("userId");
			User user = userService.findUserById(userId);
			model.addAttribute("user", user);
			model.addAttribute("wand", wandshow);
			return "show.jsp";
		}
}