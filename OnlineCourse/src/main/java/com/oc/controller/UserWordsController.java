package com.oc.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oc.entity.UserInfo;
import com.oc.entity.UserWords;
import com.oc.service.UserWordsService;

@Controller
public class UserWordsController {
	
	@Autowired
	private UserWordsService userWordsService;
	
	@RequestMapping("adduserword")
	public String add(Model model,HttpServletRequest request,UserWords words){
		if(words.getMessageSideId()==null||words.getMessageSideId().equals("")){
			return "redirect:/touserinfo?userId="+words.getMessageSideId();
		}
		UserInfo user = (UserInfo) request.getSession().getAttribute("user");
		words.setUserId(user.getId());
		words.setUpdateDate(new Date());
		userWordsService.addUserWords(words);
		return "redirect:/touserinfo?userId="+words.getMessageSideId();
	}
}
