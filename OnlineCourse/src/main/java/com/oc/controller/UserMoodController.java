package com.oc.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oc.entity.CourseUserNote;
import com.oc.entity.UserInfo;
import com.oc.entity.UserMood;
import com.oc.service.UserMoodService;
import com.oc.util.Page;

/**
 * 
 * 用户心情控制器
 *
 */
@Controller
public class UserMoodController {
	
	@Autowired
	private UserMoodService userMoodService;
		
	@RequestMapping("tomoodlist")
	public String toMoodlist(Model model,HttpServletRequest request,Integer page,Long resultCount,UserMood mood){
		UserInfo userinfo = (UserInfo) request.getSession().getAttribute("user");
		mood.setUserId(userinfo.getId());
		Page<UserMood> p = new Page<UserMood>(resultCount, 10,page);
		p.setParam(mood);
		Page<UserMood> list  = userMoodService.findAll(p);
		model.addAttribute("page", list);
		return "moodlist";
	}
	
	//删除笔记
	@RequestMapping("delmood")
	public String delmood(Model model,HttpServletRequest request,UserMood mood){
		//删除信息
		userMoodService.delmood(mood.getList());
		return "redirect:/tomoodlist";
	}
	//跳转到添加笔记页面
	@RequestMapping("toaddmood")
	public String toaddmood(){
		return "addmood";
	}
	//添加笔记
	@RequestMapping("addmood")
	public String addmood(HttpServletRequest request,UserMood mood){
		UserInfo user = (UserInfo) request.getSession().getAttribute("user");
		mood.setUserId(user.getId());
		mood.setUpdateDate(new Date());
		userMoodService.addmood(mood);
		return "redirect:/tomoodlist";
	}
	
	//跳转到编辑页面
	@RequestMapping("toupdmood")
	public String toupdmood(Model model,UserMood mood){
		mood = userMoodService.findById(mood);
		mood.setUpdateDate(new Date());
		model.addAttribute("mood", mood);
		return "addmood";
	}
	
	/**
	 * 修改信息
	 * @param model
	 * @param mood
	 * @return
	 */
	@RequestMapping("updmood")
	public String updmood(Model model,UserMood mood){
		userMoodService.updMood(mood);
		return "redirect:/tomoodlist";
	}
}
