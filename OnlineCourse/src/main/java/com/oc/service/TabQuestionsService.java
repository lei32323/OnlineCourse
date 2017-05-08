package com.oc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.QuestionsAnswerMapper;
import com.oc.dao.TabQuestionsMapper;
import com.oc.entity.QuestionsAnswer;
import com.oc.entity.TabQuestions;
import com.oc.util.Page;

@Service
public class TabQuestionsService {
	@Autowired
	public TabQuestionsMapper tabQuestionsMapper;
	@Autowired
	public QuestionsAnswerMapper questionsAnswerMapper;

	public void addquestion(TabQuestions tabQuestions) {
		// TODO Auto-generated method stub
		tabQuestionsMapper.insertSelective(tabQuestions);
	}

	public Page<TabQuestions> findAll(Page<TabQuestions> page) {
		int countBy = tabQuestionsMapper.countByExample(page.getParam());
		page.setResultCount(countBy);
		List<TabQuestions> list = tabQuestionsMapper.findPage(page);
		page.setList(list);
		return page;

	}

	public void delquestion(List<TabQuestions> list) {
		// TODO Auto-generated method stub
		for (TabQuestions tabQuestions : list) {
			tabQuestionsMapper.deleteByPrimaryKey(tabQuestions.getId());
		}
	}

	public TabQuestions findById(TabQuestions tabQuestions) {
		Map<String,Object> result = new HashMap<String,Object>();
		// TODO Auto-generated method stub
		TabQuestions selectByPrimaryKey = tabQuestionsMapper.selectByPrimaryKey(tabQuestions.getId());//获取问题的信息
		QuestionsAnswer q = new QuestionsAnswer();
		q.setAnswerId(selectByPrimaryKey.getId());
		List<QuestionsAnswer> primaryKeys = questionsAnswerMapper.selectByExample(q); //根据问题的编号获取回复的信息
		selectByPrimaryKey.setQuestionsAnswers(primaryKeys);//获取回复
		return selectByPrimaryKey;
	}
	
}
