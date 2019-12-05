package com.how2java.pojo;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

public class Category implements Serializable{
	private int id;
	private String username;
	private String password;
	private int level;
	private int status;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {

			return username;

	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Category{" +
				"id=" + id +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", level=" + level +
				", status=" + status +
				'}';
	}
}
