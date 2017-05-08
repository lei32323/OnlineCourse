package com.oc.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletConfig;

import org.apache.catalina.core.ApplicationContext;
import org.apache.catalina.startup.ContextConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oc.dao.UserInfoMapper;
import com.oc.entity.UserInfo;
import com.oc.util.ImageUtil;

@Service
public class UserInfoService {
	@Autowired
	private UserInfoMapper userInfoMapper;

	//获取信息
	public UserInfo findUserInfo(UserInfo userinfo) {
		// TODO Auto-generated method stub
		List<UserInfo> userInfos = userInfoMapper.selectByExample(userinfo);//查询用户信息
		if(userInfos!=null&&userInfos.size()==1)//当查到一个用户
			return userInfos.get(0);  //获取
		else
			return null;
	}

	//修改用户信息
	public void update(UserInfo user) {
		// TODO Auto-generated method stub
		userInfoMapper.updateByPrimaryKeySelective(user);
	}

	//注册
	public boolean regin(UserInfo userinfo) {
		// TODO Auto-generated method stub
		int insertSelective = userInfoMapper.insertSelective(userinfo);
		return insertSelective==1?true:false;
	}

	//图片上传
	public String uploadUserImage(String image1, String path,Integer id) {
		UserInfo userinfo = new UserInfo();
		userinfo.setId(id);
		//先删除之前的图片
		UserInfo findUserInfo = findUserInfo(userinfo);
		if(findUserInfo!=null&&findUserInfo.getHeadAddress()!=null){
			String oldpath= findUserInfo(userinfo).getHeadAddress();
			File oldf = new File(path+oldpath);
			if(oldf.exists())
				oldf.delete();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String dateStr = sdf.format(new Date());
        path = path+"/static/images/"+dateStr+ "/";
        File f = new File(path);
        if(!f.exists()){
            f.mkdirs();
        }
        String fileName = UUID.randomUUID().toString().replaceAll("-", "")+".png";
        userinfo.setHeadAddress("/static/images/"+dateStr+ "/"+fileName);
        try{
            //创建原始文件(先强制修改为jpg格式)
            ImageUtil.base64ToImage(image1, path + fileName);
           
            userInfoMapper.updateByPrimaryKeySelective(userinfo);//修改头像
        }catch(Exception e){
            e.printStackTrace();
        }
        return fileName;
	}
}
