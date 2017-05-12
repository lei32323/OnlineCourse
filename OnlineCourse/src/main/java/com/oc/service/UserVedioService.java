package com.oc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.UserVedioMapper;
import com.oc.entity.UserVedio;

@Service
public class UserVedioService {
	@Autowired
	private UserVedioMapper userVedioMapper;
	
	public void add(UserVedio uv) {
		// TODO Auto-generated method stub
		userVedioMapper.insertSelective(uv);
	}
	
}
