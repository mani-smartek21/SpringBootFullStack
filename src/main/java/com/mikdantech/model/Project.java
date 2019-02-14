package com.mikdantech.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="projects")
public class Project {
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String description;
	private String image;
	private String content;
	private String date;
	private String client;
	private String category;
	
	@Override
	public String toString() {
		return "Project [id=" + id + ", name=" + name + ", description=" + description + ", image=" + image
				+ ", content=" + content + ", date=" + date + ", client=" + client + ", category=" + category + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
