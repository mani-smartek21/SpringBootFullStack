package com.mikdantech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mikdantech.dao.ProjectRepo;
import com.mikdantech.model.Project;

@Controller
public class MainController {
	
	@Autowired
	private ProjectRepo repo;
	
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
	
	@PostMapping("/admin")
	public ModelAndView postAdmin(Project project) {
		
		repo.save(project);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin");

		return modelAndView;
	}
	
	
}
