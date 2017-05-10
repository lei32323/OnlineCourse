package com.oc.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.oc.entity.Course;
import com.oc.entity.TabSchool;
import com.oc.entity.Teacher;
import com.oc.entity.UserInfo;
import com.oc.entity.UserMood;
import com.oc.service.CourseService;
import com.oc.service.TabSchoolService;
import com.oc.service.TeacherService;
import com.oc.util.Page;

@Controller
public class SchoolController {
	
	@Autowired
	private TabSchoolService tabSchoolService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private TeacherService teacherService;
	
	//我的学校
	@RequestMapping("school")
	public String mySchool(Model model,HttpServletRequest request,Integer page,Long resultCount){
		//1.获取学校信息
		TabSchool s = tabSchoolService.findschool(new TabSchool());
		model.addAttribute("school", s);
		request.getSession().setAttribute("school", s);
		//2.课程列表
		Page<Course> p = new Page<Course>(resultCount, 6,page);
		Page<Course> courses = courseService.findAll(p);
		model.addAttribute("courses", courses);
		//3.老师列表
		List<Teacher> teachers = teacherService.findAll(new Teacher());
		model.addAttribute("teachers", teachers);
		return "school/school";
	}
	
	//进入到学校处理
	@RequestMapping("toschoolinfo")
	public String toschoolinfo(Model model,HttpServletRequest request,TabSchool school){
		
		TabSchool s = tabSchoolService.findschool(school);
		request.getSession().setAttribute("school", s);
		
		
		return "school/schoolinfo";
	}
	
	//编辑学校信息
	@RequestMapping("schoolinfo")
	public String schoolinfo(Model model,HttpServletRequest request,TabSchool school,@RequestParam("file") CommonsMultipartFile  file){
			 // 文件保存路径  
		try {
			String path=request.getSession().getServletContext().getRealPath("/");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
	        String dateStr = sdf.format(new Date());
			String filePath = path+"/static/images/school/"+dateStr+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			File dir = new File(path+"/static/images/school/");
			if(!dir.exists())
				dir.mkdirs();
			file.transferTo(new File(filePath));//转存文件
			school.setImageSize(file.getSize()+"");
			school.setImagePath("/static/images/school/"+dateStr+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")));
			tabSchoolService.addSchool(school);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		return "redirect:/toschoolinfo";
	}
	
	@RequestMapping("toupdpwd")
	public String toupdatepwd(Model model,TabSchool school){

		TabSchool s = tabSchoolService.findschool(school);
	
		model.addAttribute("school", s);
		
		return "school/updpwd";
		
	}
	@RequestMapping("updpwd")
	public String updatepwd(Model model,String oldpwd,String pwd,String pwdr,TabSchool school){
		TabSchool s = tabSchoolService.findschool(school);
		model.addAttribute("school", s);
		if(pwd==null||pwd.equals("")&&oldpwd==null||oldpwd.equals("")&&pwdr==null||pwdr.equals("")){
			model.addAttribute("result", "数据不完全");
			return "school/updpwd";
		}
		if(!pwd.equals(pwdr)){
			model.addAttribute("result", "两次密码不一致");
			return "school/updpwd";
		}
		if(!oldpwd.equals(s.getPassword())){
			model.addAttribute("result", "两次密码不一致");
			return "school/updpwd";
		}
		school.setPassword(pwd);
		tabSchoolService.update(school);
		
		return "school/updpwd";
	}
	
	
}
