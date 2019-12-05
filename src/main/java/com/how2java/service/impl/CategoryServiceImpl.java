package com.how2java.service.impl;

import java.util.List;

import com.how2java.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.how2java.mapper.CategoryMapper;
import com.how2java.pojo.Category;
import com.how2java.service.CategoryService;

import javax.servlet.annotation.WebServlet;
//ioc注入
@Service

public class CategoryServiceImpl  implements CategoryService{
	@Autowired(required = false)
	CategoryMapper categoryMapper;
	public List<Category> list(){
		return categoryMapper.list();
	}
	@Override
	public List<Category> list(Page page) {
		// TODO Auto-generated method stub
		return categoryMapper.list(page);
	}
	@Override
	public int total() {
		return categoryMapper.total();
	}


	@Override
	public void add(Category category) {
		categoryMapper.add(category);

	}



	@Override
	public void update(Category category) {
		categoryMapper.update(category);
	}


	@Override
	public void delete(Category category) {
		categoryMapper.delete(category.getId());
	}


	@Override
	public Category get(int id) {
		// TODO Auto-generated method stub
		return categoryMapper.get(id);
	}


}
