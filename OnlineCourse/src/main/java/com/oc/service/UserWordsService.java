package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.UserWordsMapper;
import com.oc.entity.UserWords;

@Service
public class UserWordsService {
	@Autowired
	private UserWordsMapper userWordsMapper;

	public void addUserWords(UserWords words) {
		// TODO Auto-generated method stub
		userWordsMapper.insertSelective(words);
	}

	public List<UserWords> findUserWords(UserWords word) {
		// TODO Auto-generated method stub
		return userWordsMapper.selectByExample(word);
	}
}
