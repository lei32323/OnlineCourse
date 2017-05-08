package com.oc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oc.entity.CourseUserNote;
import com.oc.service.CourseUserNoteService;
import com.oc.util.Page;

@Controller
public class CourseUserNoteController {
	
	@Autowired
	private CourseUserNoteService courseUserNoteService;
	
	//跳转到笔记面
	@RequestMapping("tomynotelist")
	public String tomynotelist(Model model,HttpServletRequest request,Integer page,Long resultCount,CourseUserNote note){
//		if(note!=null&&note.getNoteName()!=null&&!note.getNoteName().equals("")){//当有查询条件 分页信息清空
//			page = null;
//			resultCount = null;1111
//		}
		String path=request.getSession().getServletContext().getRealPath("/");
		Page<CourseUserNote> p = new Page<CourseUserNote>(resultCount, 10,page);
		p.setParam(note);
		Page<CourseUserNote> list  = courseUserNoteService.findAll(p,path);
		model.addAttribute("page", list);
		return "mynotelist";
	}
	
	//下载笔记
	@RequestMapping("downmynote")
	public String downmynote(Model model){
		
		return "mynotelist";
	}
	
	//跳转到笔记添加页面
	@RequestMapping("tomynote")
	public String tomynote(Model model){
		
		return "mynote";
	}
			
	//删除笔记
	@RequestMapping("delmynote")
	public String delnote(Model model,HttpServletRequest request,CourseUserNote notes){
		//删除信息
		String path=request.getSession().getServletContext().getRealPath("/");
		courseUserNoteService.delnote(notes.getList(),path);
		return "redirect:/tomynotelist";
	}
	
	
}
