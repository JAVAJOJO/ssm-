package com.how2java.service;

import java.util.List;

import com.how2java.pojo.Category;
import com.how2java.pojo.Category2;
import com.how2java.util.Page;

public interface CategoryService2 {

	List<Category2> list2();
	int total2();
	List<Category2> list2(Page page);
	void add2(Category2 category2);
	
	void update2(Category2 category2);
	void delete2(Category2 category2);
	Category2 get2(int id);
}
