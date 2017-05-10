package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.TabSchoolMapper;
import com.oc.entity.TabSchool;

@Service
public class TabSchoolService {
	
	@Autowired
	private TabSchoolMapper TabSchoolMapper;

	//添加信息
	public void addSchool(TabSchool school) {
		// TODO Auto-generated method stub
		TabSchoolMapper.updateByPrimaryKeySelective(school);
	}

	public TabSchool findschool(TabSchool school) {
		// TODO Auto-generated method stub
		List<TabSchool> selectByExample = TabSchoolMapper.selectByExample(school);
		return selectByExample.get(0);
	}
	//修改信息
	public void update(TabSchool school) {
		// TODO Auto-generated method stub
		TabSchoolMapper.updateByPrimaryKeySelective(school);
	}
	
	
}
