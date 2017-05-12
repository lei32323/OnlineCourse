package com.oc.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.CourseVideoMapper;
import com.oc.entity.Course;
import com.oc.entity.CourseUserNote;
import com.oc.entity.CourseVideo;
import com.oc.util.Page;

@Service
public class CourseVideoService {
	
	@Autowired
	private CourseVideoMapper courseVideoMapper;
	public void addVideo(CourseVideo video) {
		// TODO Auto-generated method stub
		courseVideoMapper.insertSelective(video);
	}
	
	public Page<CourseVideo>  findAll(Page<CourseVideo> page) {
		int countBy = courseVideoMapper.countByExample(page.getParam());
		page.setResultCount(countBy);
		List<CourseVideo> list = courseVideoMapper.findPage(page);
		page.setList(list);
		return page;
	}

	public void del(CourseVideo video,String path) {
		// TODO Auto-generated method stub
					for (CourseVideo courseVideo : video.getList()) {
						CourseVideo c = courseVideoMapper.selectByPrimaryKey(courseVideo.getId());
						 
						 //删除文件-视频
						 String filePath = c.getVideopath();
						 File f = new File(path+"/"+filePath);
						 if(f.exists()){
							 f.delete();
						 }
						 //删除文件-封面
						 String filePath1 = c.getFengmian();
						 File f1 = new File(path+"/"+filePath1);
						 if(f1.exists()){
							 f1.delete();
						 }
						 //删除记录
						 courseVideoMapper.deleteByPrimaryKey(courseVideo.getId());
					}
		
	}

	public CourseVideo findById(Integer id) {
		// TODO Auto-generated method stub
		return courseVideoMapper.selectByPrimaryKey(id);
	}

	public void update(CourseVideo courseVideo) {
		// TODO Auto-generated method stub
		courseVideoMapper.updateByPrimaryKeySelective(courseVideo);
	}

}
