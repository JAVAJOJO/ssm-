package com.how2java.mapper;

import java.util.List;


import com.how2java.pojo.Category2;
import com.how2java.util.Page;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryMapper2 {
	public int add2(Category2 category2); 
    
	   
    
    public void delete2(int v_id);  
       
      
    public Category2 get2(int v_id);       
    public int update2(Category2 category2);   
       
    public List<Category2> list2();
    
    public List<Category2> list2(Page page);
    
      
    public int total2();  
    
}
