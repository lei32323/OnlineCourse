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
import com.oc.entity.CourseVideo;
import com.oc.entity.Teacher;
import com.oc.service.CourseService;
import com.oc.service.CourseVideoService;
import com.oc.service.TeacherService;
import com.oc.util.Page;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private CourseVideoService courseVideoService;
	
	@RequestMapping("tocourselist")
	public String tocourselist(Model model,HttpServletRequest request,Integer page,Long resultCount,Course course){
//		UserInfo userinfo = (UserInfo) request.getSession().getAttribute("user");
//		mood.setUserId(userinfo.getId());
		Page<Course> p = new Page<Course>(resultCount, 2,page);
		p.setParam(course);
		Page<Course> list  = courseService.findAll(p);
		model.addAttribute("page", list);
		return "school/courselist";
	}
	
	@RequestMapping("tocourseinfos")
	public String tocourselists(Model model,HttpServletRequest request,Integer page,Long resultCount,Course course){
//		UserInfo userinfo = (UserInfo) request.getSession().getAttribute("user");
//		mood.setUserId(userinfo.getId());
		Page<Course> p = new Page<Course>(resultCount, 10,page);
		p.setParam(course);
		Page<Course> list  = courseService.findAll(p);
		model.addAttribute("page", list);
		return "school/courseinfos";
	}
	
	@RequestMapping("tocourseforuser")
	public String tocourseforuser(Model model,Course course){
		Course result = courseService.findById(course.getId()); 
		model.addAttribute("course", result);
		return "school/tocourseforuser";
	}
	
	
	@RequestMapping("delcourse")
	public String delcourse(Model model,Course course){
		courseService.delcourse(course);
		return "redirect:/tocourselist";
	}
	@RequestMapping("tocourseinfo")
	public String tocourseinfo(Model model,Course course){
		if(course!=null&&course.getId()!=null&&!course.getId().equals("")){
			Course result = courseService.findById(course.getId()); 
			model.addAttribute("course", result);
		}
		model.addAttribute("teachers", teacherService.findAll(new Teacher()));
		return "school/courseinfo";
	}
	
	@RequestMapping("courseinfo")
	public String courseinfo(Model model,HttpServletRequest request,Course course,@RequestParam("file") CommonsMultipartFile  file){
		try {
			if(file!=null&&file.getOriginalFilename().lastIndexOf(".")>-1){
				String path=request.getSession().getServletContext().getRealPath("/");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
				String dateStr = sdf.format(new Date());
				String filePath = path+"/static/images/course/"+dateStr+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
				File dir = new File(path+"/static/images/course/");
				if(!dir.exists())
					dir.mkdirs();
				file.transferTo(new File(filePath));//转存文件
				course.setCourseCover("/static/images/course/"+dateStr+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")));
			}
			course.setUpdateDate(new Date());
			if(course.getId()!=null)
				courseService.updateCourse(course);
			else
				courseService.insertCource(course);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("course", course);
		//创建视频页面
		return "school/uploadvoie";
	}
	@RequestMapping("touploadvoie")
	public String touploadvoie(Model model,String id){
		Course course = courseService.findById(Integer.parseInt(id));
		model.addAttribute("course", course);
		//创建视频页面
		return "school/uploadvoie";
	}
	
	@RequestMapping("addvideo")
	public String addvideo(Model model,HttpServletRequest request,CourseVideo video,@RequestParam("file") CommonsMultipartFile  file,@RequestParam("videofile") CommonsMultipartFile  videofile){
//		if(video)
		if(file!=null&&file.getOriginalFilename().lastIndexOf(".")>-1){
			try {
				String path=request.getSession().getServletContext().getRealPath("/");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
				String dateStr = sdf.format(new Date());
				String filePath = path+"/static/video/"+video.getCourseId()+"/"+dateStr+videofile.getOriginalFilename().substring(videofile.getOriginalFilename().lastIndexOf("."));
				File dir = new File(path+"/static/video/"+video.getCourseId()+"/");
				if(!dir.exists())
					dir.mkdirs();
				videofile.transferTo(new File(filePath));//转存文件
				video.setVideopath("/static/video/"+video.getCourseId()+"/"+dateStr+videofile.getOriginalFilename().substring(videofile.getOriginalFilename().lastIndexOf(".")));
				
				String filePath1 = path+"/static/images/course/"+dateStr+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
				File dir1 = new File(path+"/static/images/course/");
				if(!dir1.exists())
					dir1.mkdirs();
				file.transferTo(new File(filePath1));//转存文件
				video.setFengmian("/static/images/course/"+dateStr+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")));
				video.setCreatime(new Date());
				courseVideoService.addVideo(video);
				Course course = new Course();
				course.setId(video.getCourseId());
				model.addAttribute("course", course);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return "school/uploadvoie";
	}
	
	//跳转到显示视频的页面
	@RequestMapping("tovoielist")
	public String tovoielist(Model model,HttpServletRequest request,Integer page,Long resultCount,CourseVideo video){
		//获取课程信息
		Course course = courseService.findById(video.getCourseId());
		model.addAttribute("course", course);
		//获取课程对应的视频
		Page<CourseVideo> p = new Page<CourseVideo>(resultCount, 2,page);
		p.setParam(video);
		Page<CourseVideo> list  = courseVideoService.findAll(p);
		model.addAttribute("page", list);
		return "school/tovoielist";
	}
	//删除视频
	@RequestMapping("delvideo")
	public String delvideo(Model model,HttpServletRequest request,CourseVideo video){
		String path=request.getSession().getServletContext().getRealPath("/");
		courseVideoService.del(video,path);
		return "redirect:/tovoielist?courseId="+video.getCourseId();
	}
	
	@RequestMapping("tocoursestudy")
	public String tocoursestudy(Model model,HttpServletRequest request,Integer page,Long resultCount,CourseVideo video){
		//获取课程信息
		Course course = courseService.findById(video.getCourseId());
		model.addAttribute("course", course);
		//获取课程对应的视频
		Page<CourseVideo> p = new Page<CourseVideo>(resultCount, 2,page);
		p.setParam(video);
		Page<CourseVideo> list  = courseVideoService.findAll(p);
		model.addAttribute("page", list);
		return "school/tocoursestudy";
	}
	
	@RequestMapping("tolookvideo")
	public String tolookvideo(Model model,CourseVideo video){
		//添加播放次数+1
		Page<CourseVideo> p = new Page<CourseVideo>(null, 2,null);
		p.setParam(video);
		CourseVideo courseVideo = courseVideoService.findById(video.getId());
		model.addAttribute("video", courseVideo);
		
		Page<CourseVideo> p1 = new Page<CourseVideo>(null, 100,null);
		p1.setParam(video);
		Page<CourseVideo> videos  = courseVideoService.findAll(p1);
		model.addAttribute("videos", videos);
		return "school/tolookvideo";
	}
}
