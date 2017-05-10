package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oc.dao.CourseMapper;
import com.oc.entity.Course;
import com.oc.util.Page;

@Service
public class CourseService {

	@Autowired
	private CourseMapper CourseMapper;
	
	public Page<Course> findAll(Page<Course> page) {
		int countBy = CourseMapper.countByExample(page.getParam());
		page.setResultCount(countBy);
		List<Course> list = CourseMapper.findPage(page);
		page.setList(list);
		return page;
	}

	public void delcourse(Course course) {
		// TODO Auto-generated method stub
		for (Course c : course.getList()) {
			CourseMapper.deleteByPrimaryKey(c.getId());
		}
	}

	public Course findById(Integer id) {
		// TODO Auto-generated method stub
		return CourseMapper.selectByPrimaryKey(id);
	}

	public void insertCource(Course course) {
		// TODO Auto-generated method stub
		CourseMapper.insertSelective(course);
	}

	public void updateCourse(Course course) {
		// TODO Auto-generated method stub
		CourseMapper.updateByPrimaryKeySelective(course);
	}
	

}
