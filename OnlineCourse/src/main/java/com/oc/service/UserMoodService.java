package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.UserMoodMapper;
import com.oc.entity.UserMood;
import com.oc.util.MyStringUtils;
import com.oc.util.Page;

@Service
public class UserMoodService {
	
	@Autowired
	private UserMoodMapper userMoodMapper;
	
	public Page<UserMood> findAll(Page<UserMood> page) {
		int countBy = userMoodMapper.countByExample(page.getParam());
		page.setResultCount(countBy);
		List<UserMood> list = userMoodMapper.findPage(page);
		for (UserMood userMood : list) {
			userMood.setContent(MyStringUtils.subStr(userMood.getContent(),5));
		}
		page.setList(list);
		return page;
	}

	
	

	/**
	 * 删除心情
	 * @param list
	 */
	public void delmood(List<UserMood> list) {
		// TODO Auto-generated method stub
		for (UserMood userMood : list) {
			userMoodMapper.deleteByPrimaryKey(userMood.getId());
		}
	}

	/**
	 * 添加心情
	 * @param mood
	 */

	public void addmood(UserMood mood) {
		// TODO Auto-generated method stub
		userMoodMapper.insertSelective(mood);
	}


	/**
	 * 根据id获取信息
	 * @param mood
	 * @return
	 */
	public UserMood findById(UserMood mood) {
		// TODO Auto-generated method stub
		return userMoodMapper.selectByPrimaryKey(mood.getId());
	}


	/**
	 * 修改信息
	 * @param mood
	 */
	public void updMood(UserMood mood) {
		// TODO Auto-generated method stub
		userMoodMapper.updateByPrimaryKeySelective(mood);
	}
	
	
	
	
	
}
