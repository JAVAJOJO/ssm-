package com.how2java.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.how2java.pojo.Category;
import com.how2java.service.CategoryService;
import com.how2java.util.Page;

// 告诉spring mvc这是一个控制器类
//ioc注入
@Controller
//一级目录
@RequestMapping("")

public class CategoryController {
	@Autowired
	CategoryService categoryService;
	//二级目录
	//分页，显示user2数据库所有数据
	@RequestMapping("muser")
	public ModelAndView listCategory(Page page){
		ModelAndView mav = new ModelAndView();
		List<Category> cs= categoryService.list(page);
		int total = categoryService.total();
		page.caculateLast(total);
		mav.addObject("cs", cs);
		//把cs对象存在mav对象里面
		mav.setViewName("muser");
		//跳转到muser页面
		return mav;
	}
	//将数据以json格式传给浏览器
	@RequestMapping("JSON")
	@ResponseBody
	public List JSON(Model model){
		//System.out.println("id="+id);
		//Category category=categoryService.list();
		List<Category> list= categoryService.list();
		model.addAttribute("list",list);
		//System.out.println(model);
		return list;
	}
	//修改数据
	@RequestMapping("editCategory")
	public ModelAndView editCategory(Category category){
		Category c= categoryService.get(category.getId());
		ModelAndView mav = new ModelAndView("editCategory");
		mav.addObject("c", c);
		return mav;
	}
	//把修改后的数据提交来这个方法
	@RequestMapping("updateCategory")
	public ModelAndView updateCategory(Category category){
		categoryService.update(category);
		ModelAndView mav = new ModelAndView("redirect:/muser");
		return mav;
	}
	//添加数据
	@RequestMapping("Submit")
	public  ModelAndView addCategory( Category category){
		if (category.getUsername()!=null&&category.getPassword()!=null) {
			categoryService.add(category);
		}
		//System.out.println("SSM接受到浏览器提交的json，并转化为category对象"+category);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Submit");
		//System.out.println("SSM接受到浏览器提交的json，并转化为category对象"+category);
		return mav;
	}
	//删除数据
	@RequestMapping("deleteCategory")
	public ModelAndView deleteCategory(Category category){
		categoryService.delete(category);
		ModelAndView mav = new ModelAndView("redirect:/muser");
		return mav;
	}
//	@RequestMapping("depts")
//	@ResponseBody
//	public List<Category> getAllDept(){
//
//		List<Category> list = categoryService.list();
//		return list;
//	}

//	@RequestMapping("/jsontest")
//	public @ResponseBody Category jsontest(@RequestBody Category user){
//		System.out.println("testAjax方法执行了...");
//		// 客户端发送ajax的请求，传的是json字符串，后端把json字符串封装到user对象中
//		System.out.println(user);
//		// 做响应，模拟查询数据库
//		user.setUsername("giao");
//		// 做响应
//		return user;
//	}
//	@ResponseBody
//	@RequestMapping("getOneCategory")
//	public String getOneCategory() {
//		Category c = new Category();
//		//c.setId(10);
//		c.setUsername("第10个分类");
//		JSONObject json= new JSONObject();
//		json.put("category", JSONObject.toJSON(c));
//		return json.toJSONString();
//	}

//
//	@RequestMapping("testInterceptor")
//	public String testInterceptor() {
//		System.out.println("拦截器方法执行了(controller)");
//		return "success";
//	}
//	@RequestMapping("testException")
//	public String testException() throws Exception{
//		System.out.println("抛异常方法执行了");
//		try {
//			//int a=10/0;
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new exception("查询用户出错");
//		}
//		return "success";
//	}
//
//	@RequestMapping("testAjax")//@ResponseBody mvc帮你转成json
//	public @ResponseBody Category testAjax(@RequestBody Category user){
//		System.out.println("Ajax方法执行了");
//		System.out.println(user);
////		user.setUsername("haha");
////		user.setPassword("40");
//		return user;
//	}
}
