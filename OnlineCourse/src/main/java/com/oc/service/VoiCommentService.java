package com.oc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.VoiCommentMapper;
import com.oc.entity.Course;
import com.oc.entity.VoiComment;
import com.oc.util.Page;

@Service
public class VoiCommentService {
	
	@Autowired
	private VoiCommentMapper voiCommentMapper;
	


	public Page<VoiComment> findAll(Page<VoiComment> page) {
		int countBy = voiCommentMapper.countByExample(page.getParam());
		page.setResultCount(countBy);
		List<VoiComment> list = voiCommentMapper.findPage(page);
		page.setList(list);
		return page;
	}



	public void add(VoiComment video) {
		// TODO Auto-generated method stub
		voiCommentMapper.insertSelective(video);
	}
	
}
