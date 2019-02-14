package com.mikdantech.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.mikdantech.model.Project;

@RepositoryRestResource(collectionResourceRel="projects", path="projects")
public interface ProjectRepo extends JpaRepository<Project, Integer> {
	
}
