package com.mikdantech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@GetMapping("/")
	public ModelAndView index() {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("title", "Project Proposal");
		modelAndView.setViewName("application");

		return modelAndView;
	}

	@GetMapping("/admin")
	public ModelAndView getAdmin() {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin");

		return modelAndView;
	}
}
