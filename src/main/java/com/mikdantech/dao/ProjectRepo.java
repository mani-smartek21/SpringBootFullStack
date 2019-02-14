package com.mikdantech.dao;

import org.springframework.data.repository.CrudRepository;

import com.mikdantech.model.Project;

public interface ProjectRepo extends CrudRepository<Project, Integer> {
	
}
