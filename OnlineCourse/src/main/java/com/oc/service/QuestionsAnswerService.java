package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.QuestionsAnswerMapper;
import com.oc.entity.QuestionsAnswer;

@Service
public class QuestionsAnswerService {
	
	@Autowired
	public QuestionsAnswerMapper questionsAnswerMapper;

	public List<QuestionsAnswer> findAll(QuestionsAnswer qd) {
		// TODO Auto-generated method stub
		return questionsAnswerMapper.selectByExample(qd);
	}

	public void add(QuestionsAnswer qa) {
		// TODO Auto-generated method stub
		questionsAnswerMapper.insertSelective(qa);
	}

}
