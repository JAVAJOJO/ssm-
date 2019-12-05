package com.how2java.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLConnection;
import java.util.List;
import java.util.UUID;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.how2java.pojo.Category2;
import com.how2java.service.CategoryService2;
import com.how2java.util.Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("")
public class CategoryController2 {
	@Autowired
	CategoryService2 categoryService2;
	@RequestMapping("mvideo")
	public ModelAndView listCategory2(Page page){
		ModelAndView mav = new ModelAndView();
		List<Category2> cs= categoryService2.list2(page);
		int total = categoryService2.total2();		
		page.caculateLast(total);	
		mav.addObject("cs", cs);
		mav.setViewName("mvideo");
		return mav;
	}
	//跳转到添加数据的jsp页面
	@RequestMapping("Submit22")
	public String Submit22(){
		return "Submit2";
	}
	//上传
	@RequestMapping("fileupload2")
	public String fileuoload2(Category2 category2,HttpServletRequest request, MultipartFile upload,MultipartFile upload1) throws Exception {
		System.out.println("springmvc文件上传...");
		// 使用fileupload组件完成文件上传
		// 上传的位置
		String path = request.getSession().getServletContext().getRealPath("/uploads/");
		// 判断，该路径是否存在
		File file = new File(path);
		if(!file.exists()){
			// 创建该文件夹
			file.mkdirs();
		}
		// 说明上传文件项
		// 获取上传文件的名称
		String filename = upload.getOriginalFilename();
		String filename1 = upload1.getOriginalFilename();

		// 把文件的名称设置唯一值，uuid
//		String uuid = UUID.randomUUID().toString().replace("-", "");
//		filename = uuid+"_"+filename;
		// 完成文件上传
		upload.transferTo(new File(path,filename));
		upload1.transferTo(new File(path,filename1));
		category2.setV_location(filename1);
		category2.setV_image(filename);
		categoryService2.add2(category2);
		return "showUploadedFile";
	}
	@RequestMapping("JSON2")
	@ResponseBody
	public List JSON2(Model model){
		//System.out.println("id="+id);
		//Category category=categoryService.list();
		List<Category2> list2= categoryService2.list2();
		model.addAttribute("list2",list2);
		//System.out.println(model);
		return list2;
	}
	@RequestMapping("deleteCategory2")
	public ModelAndView deleteCategory2(Category2 category2){
		categoryService2.delete2(category2);
		ModelAndView mav = new ModelAndView("redirect:/mvideo");
		return mav;
	}	
	@RequestMapping("editCategory2")
	public ModelAndView editCategory2(Category2 category2){
		Category2 c= categoryService2.get2(category2.getV_id());
		ModelAndView mav = new ModelAndView("editCategory2");
		mav.addObject("c", c);
		return mav;
	}	
	@RequestMapping("updateCategory2")
	public ModelAndView updateCategory2(Category2 category2){
		categoryService2.update2(category2);
		ModelAndView mav = new ModelAndView("redirect:/mvideo");
		return mav;
	}
}
