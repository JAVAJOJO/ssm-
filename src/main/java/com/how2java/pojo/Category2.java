package com.how2java.pojo;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

public class Category2 implements Serializable {
	private String v_image;

	public String getV_image() {
		return v_image;
	}

	public void setV_image(String v_image) {
		this.v_image = v_image;
	}

	private int v_id;
	private String v_name;
	private int v_status;
	private String v_location;
	public int getV_id() {
	return v_id;
}
	public void setV_id(int v_id) {
	this.v_id = v_id;
}
	public String getV_name() {
	return v_name;
}
	public void setV_name(String v_name) {
	this.v_name = v_name;
}

	@Override
	public String toString() {
		return "Category2{" +
				"v_image='" + v_image + '\'' +
				", v_id=" + v_id +
				", v_name='" + v_name + '\'' +
				", v_status=" + v_status +
				", v_location='" + v_location + '\'' +
				'}';
	}

	public int getV_status() {
	return v_status;
}
public void setV_status(int v_status) {
	this.v_status = v_status;
}
public String getV_location() {
	return v_location;
}
public void setV_location(String v_location) {
	this.v_location = v_location;
}
}
