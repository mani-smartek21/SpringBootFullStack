package com.mikdantech.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
		
		List<Project> allProjects = repo.findAll();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("allProjects", allProjects);
		modelAndView.setViewName("admin");

		return modelAndView;
	}
}
