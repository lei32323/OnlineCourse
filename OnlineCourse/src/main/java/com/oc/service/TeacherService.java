package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.TeacherMapper;
import com.oc.entity.Teacher;

@Service
public class TeacherService {
	@Autowired
	private  TeacherMapper  teacherMapper;
	
	public List<Teacher> findAll(Teacher t){
		return   teacherMapper.selectByExample(t);
	}
}
