package com.oc.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.CourseUserNoteMapper;
import com.oc.entity.CourseUserNote;
import com.oc.util.Page;

@Service
public class CourseUserNoteService {
		@Autowired
		private CourseUserNoteMapper courseUserNoteMapper;

		//根据条件获取信息
		public Page<CourseUserNote> findAll(Page<CourseUserNote> page,String path) {
			// TODO Auto-generated method stub
			int countBy = courseUserNoteMapper.countByExample(page.getParam());
			page.setResultCount(countBy);
			List<CourseUserNote> list = courseUserNoteMapper.findPage(page);
			for (CourseUserNote courseUserNote : list) {
				courseUserNote.setFilePath(path+"\\"+courseUserNote.getFilePath());
			}
			page.setList(list);
			return page;
		}

		//删除文件
		public void delnote(List<CourseUserNote> list,String path) {
			// TODO Auto-generated method stub
			List<CourseUserNote> list2 =null;
			CourseUserNote note = new CourseUserNote();
			for (CourseUserNote courseUserNote : list) {
				 list2 = courseUserNoteMapper.selectByExample(courseUserNote);
				 if(list2!=null&&list2.size()>0){
					 note = list2.get(0);
				 }
				 //删除文件
				 String filePath = note.getFilePath();
				 File f = new File(path+"/"+filePath);
				 if(f.exists()){
					 f.delete();
				 }
				 //删除记录
				 courseUserNoteMapper.deleteByExample(courseUserNote);
			}
		}
		
		
}
