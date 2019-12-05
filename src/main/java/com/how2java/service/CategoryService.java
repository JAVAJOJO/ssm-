package com.how2java.service;

import java.util.List;

import com.how2java.pojo.Category;
import com.how2java.util.Page;

public interface CategoryService {
	List<Category> list();
	int total();
	List<Category> list(Page page);
	void add(Category category);
	void update(Category category);
	void delete(Category category);
	Category get(int id);

}
