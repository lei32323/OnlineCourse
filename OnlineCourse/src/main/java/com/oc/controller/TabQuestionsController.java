package com.oc.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oc.entity.QuestionsAnswer;
import com.oc.entity.TabQuestions;
import com.oc.entity.UserInfo;
import com.oc.entity.UserMood;
import com.oc.service.QuestionsAnswerService;
import com.oc.service.TabQuestionsService;
import com.oc.util.Page;

/**
 * 留言控制器
 * 
 *
 */
@Controller
public class TabQuestionsController {
	
	@Autowired
	private TabQuestionsService tabQuestionsService;
	
	@Autowired
	private QuestionsAnswerService questionsAnswerService;
	
	//跳转到提问页面
	@RequestMapping("toaddquestion")
	public String toaddquestion(){
		return "toaddquestion";
	}
	//添加提问
	@RequestMapping("addquestion")
	public String addquestion(Model model,HttpServletRequest request,TabQuestions tabQuestions){
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
		tabQuestions.setUserId(userInfo.getId());
		tabQuestions.setUpdateDate(new Date());
		tabQuestionsService.addquestion(tabQuestions);
		return "toaddquestion";
	}
	
	//查看提问 分页
	@RequestMapping("questionlist")
	public String toaddquestionlist(Model model,HttpServletRequest request,Integer page,Long resultCount,TabQuestions tabQuestions){
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
		tabQuestions.setUserId(userInfo.getId());
		Page<TabQuestions> p = new Page<TabQuestions>(resultCount, 10,page);
		p.setParam(tabQuestions);
		Page<TabQuestions> list  = tabQuestionsService.findAll(p);
		model.addAttribute("page", list);
		return "toaddquestionlist";
	}
	//删除提问
	@RequestMapping("delquestion")
	public String delquestion(Model model,HttpServletRequest request,TabQuestions tabQuestions){
		//删除信息
		tabQuestionsService.delquestion(tabQuestions.getList());
		return "redirect:/questionlist";
	}
	//查看提问
	@RequestMapping("questionbyid")
	public String questionbyid(Model model,HttpServletRequest request,TabQuestions tabQuestions){
		TabQuestions findById = tabQuestionsService.findById(tabQuestions);
		model.addAttribute("tabQuestions", findById);
		return "showquestion";
	}
	
	//查看自己的回答
	@RequestMapping("myanswerlist")
	public String myanswerlist(Model model,HttpServletRequest request,Integer page,Long resultCount,TabQuestions tabQuestions){
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
		Page<TabQuestions> p = new Page<TabQuestions>(resultCount, 10,page);
		p.setParam(tabQuestions);
		p.setSql("and ONLINECOURSE.TAB_QUESTIONS.id in (select t.answer_id from questions_answer t where answer_userid = "+userInfo.getId()+")");
		Page<TabQuestions> list  = tabQuestionsService.findAll(p);
		model.addAttribute("page", list);
		return "myanswerlist";
	}
	
	//查看问题
	@RequestMapping("qalist")
	public String qalist(Model model,HttpServletRequest request,Integer page,Long resultCount,TabQuestions tabQuestions){
//		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
		Page<TabQuestions> p = new Page<TabQuestions>(resultCount, 10,page);
//		p.setParam(tabQuestions);
//		p.setSql("and ONLINECOURSE.TAB_QUESTIONS.id in (select t.answer_id from questions_answer t where answer_userid = "+userInfo.getId()+")");
		Page<TabQuestions> list  = tabQuestionsService.findAll(p);
		model.addAttribute("page", list);
		return "qalist";
	}
	
	//跳转到回答问题
	@RequestMapping("hdlist")
	public String hdlist(Model model,TabQuestions tabQuestions){
		TabQuestions findById = tabQuestionsService.findById(tabQuestions);
		model.addAttribute("tabQuestions", findById);
		return "halist";
	}
	//回答问题
	@RequestMapping("addanswers")
	public String addanswers(Model model,HttpServletRequest request,QuestionsAnswer qa){
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
		qa.setAnswerUserid(userInfo.getId());
		qa.setAnswerName(userInfo.getLoginName());
		qa.setAnswerDate(new Date());
		qa.setQuestionId(qa.getAnswerId());
		questionsAnswerService.add(qa);
		
		return "redirect:/hdlist?id="+qa.getQuestionId();
	}
}
