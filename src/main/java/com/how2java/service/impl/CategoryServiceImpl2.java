package com.how2java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.how2java.mapper.CategoryMapper;
import com.how2java.mapper.CategoryMapper2;
import com.how2java.pojo.Category2;
import com.how2java.service.CategoryService2;
import com.how2java.util.Page;
@Service
public class CategoryServiceImpl2 implements CategoryService2{
	@Autowired(required = false)
	CategoryMapper2 categoryMapper2;
	
	
	public List<Category2> list2(){
		return categoryMapper2.list2();
	}


	@Override
	public List<Category2> list2(Page page) {
		// TODO Auto-generated method stub
		return categoryMapper2.list2(page);
	}


	@Override
	public int total2() {
		return categoryMapper2.total2();
	}


	@Override
	public void add2(Category2 category2) {
		categoryMapper2.add2(category2);
		
	}
	


	@Override
	public void update2(Category2 category2) {
		categoryMapper2.update2(category2);
	}


	@Override
	public void delete2(Category2 category2) {
		categoryMapper2.delete2(category2.getV_id());
	}


	@Override
	public Category2 get2(int id) {
		// TODO Auto-generated method stub
		return categoryMapper2.get2(id);
	}

}
