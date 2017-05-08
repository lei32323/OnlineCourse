package com.oc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchoolController {
	
	//我的学校
	@RequestMapping("school")
	public String mySchool(){
		
		return "/school";
	}
}
