package com.oc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oc.entity.UserInfo;
import com.oc.entity.UserMood;
import com.oc.entity.UserWords;
import com.oc.service.UserInfoService;
import com.oc.service.UserMoodService;
import com.oc.service.UserWordsService;
import com.oc.util.MyStringUtils;
import com.oc.util.Page;

@Controller
public class UserInfoController {
	
		@Autowired
		private UserInfoService userInfoService;
		
		@Autowired
		private UserMoodService userMoodService;

		@Autowired
		private UserWordsService userWordsService;
		
		@RequestMapping("login")
		public String login(Model model,HttpServletRequest request,UserInfo userinfo,String isok){
			if(isok!=null&&isok.equals("1")){
				return "index";
			}
			if(userinfo.getLoginName()==null||userinfo.getLoginName().equals("")||userinfo.getLoginpwd()==null||userinfo.getLoginpwd().equals("")){
				model.addAttribute("result", "请先登录");
				return "index";
			}
			UserInfo user = userInfoService.findUserInfo(userinfo);
			if(user!=null){
				//设置用户为登陆状态
				user.setIslogin(1);
				userInfoService.update(user);
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("msg", "1");
				model.addAttribute("result", "登陆成功");
			}else{
				model.addAttribute("user", userinfo);
				model.addAttribute("msg", "用户名或者密码错误");
				model.addAttribute("result", "用户名或者密码错误");
			}
			
			//获取公告栏信息
			
			//获取收藏的视频
			
			//获取观看记录
			
			//获取课程信息
			
			//获取学生信息
			
			//获取提问信息
			
			//获取热门提问
			
			
			return "index";
		}
		
		//用户退出
		@RequestMapping("exitLogin")
		public String exitLogin(Model model,HttpServletRequest request){
			HttpSession session = request.getSession();
			if(session.getAttribute("user")!=null){
				UserInfo user = (UserInfo) session.getAttribute("user");
				//设置用户为登陆状态
				user.setIslogin(0);
				userInfoService.update(user);
			}
			session.removeAttribute("user");
			session.removeAttribute("msg");
			return "index";
		}
		
		//regin
		@RequestMapping("regin")
		public String regin(Model model,HttpServletRequest request,UserInfo userinfo){
			userinfo.setIslogin(1);
			boolean isok = userInfoService.regin(userinfo);
			UserInfo user = userInfoService.findUserInfo(userinfo);
			if(isok){
				request.getSession().setAttribute("user", user);
			}
			return "index";
		}
		
		//个人信息
		@RequestMapping("userinfo")
		public String userInfo(Model model,HttpServletRequest request){
//			UserInfo user = (UserInfo) request.getSession().getAttribute("user");
			//如果是第一次注册需要完善信息
//			if(user.getPhone()!=null&&!user.getPhone().equals("")){
//				//不是第一次登陆
//				return "index";
//			}else{
				//是第一次登陆
//				return "upduserinfo";
//			}
			return "upduserinfo";
		}
		
		//完善个人信息
		@RequestMapping("wsuserinfo")
		public String wsuserinfo(Model model,HttpServletRequest request,UserInfo userinfo){
			if(userinfo==null||userinfo.getLoginName()==null||userinfo.getLoginName().equals("")||userinfo.getEmail()==null||userinfo.getEmail().equals("")||userinfo.getPhone()==null||userinfo.getPhone().equals("")||userinfo.getQq()==null||userinfo.getQq().equals("")||userinfo.getSex()==null){
				model.addAttribute("result", "信息不完全");
				return "upduserinfo";
			}
			userInfoService.update(userinfo);
			request.getSession().setAttribute("user", userinfo);
			return "redirect:/userinfo";
		}
		
		//跳转到图片的页面
		@RequestMapping("phouserinfo")
		public String tophouserinfo(Model model){
			return "phouserinfo";
		}
		
		//跳转到图片的页面
		@RequestMapping("fileupdate")
		public String fileupdate(Model model,HttpServletRequest request ,String image1){
			String path=request.getSession().getServletContext().getRealPath("/");
			UserInfo user = (UserInfo) request.getSession().getAttribute("user");
			String result = userInfoService.uploadUserImage(image1,path,user.getId());
			user = userInfoService.findUserInfo(user);
			request.getSession().setAttribute("user", user);
			return "redirect:/phouserinfo";
		}
		
		//跳转到密码修改页面
		@RequestMapping("topwduserinfo")
		public String topwduserinfo(Model model){
			return "pwduserinfo";
		}
		
		//跳转到密码修改页面
		@RequestMapping("pwduserinfo")
		public String pwduserinfo(Model model,HttpServletRequest request,String oldpwd,String pwd,String pwdr){
			model.addAttribute("msg", "1");
			if(pwd==null||pwd.equals("")&&oldpwd==null||oldpwd.equals("")&&pwdr==null||pwdr.equals("")){
				model.addAttribute("result", "数据不完全");
				return "pwduserinfo";
			}
			if(!pwd.equals(pwdr)){
				model.addAttribute("result", "两次密码不一致");
				return "pwduserinfo";
			}
			UserInfo user = (UserInfo) request.getSession().getAttribute("user");
			if(!user.getLoginpwd().equals(oldpwd)){
				model.addAttribute("result", "旧密码输入错误");
				return "pwduserinfo";
			}
			user.setLoginpwd(pwdr);
			userInfoService.update(user);
			return "pwduserinfo";
		}
		
		//查看别人的信息或者自己的信息
		@RequestMapping("touserinfo")
		public String touserinfo(Model model,HttpServletRequest request ,String userId){
			UserInfo user = (UserInfo) request.getSession().getAttribute("user");
			Page<UserMood> p = new Page<UserMood>(null, 3,null);
			UserMood um = new UserMood();
			if(userId!=null&&!userId.equals("null")&&!userId.equals(user.getId().toString())){//判断是查看自己的还是别人的
				//查看别人的
				UserInfo u = new UserInfo();
				u.setId(Integer.parseInt(userId));
				userInfoService.findUserInfo(u);
				um.setUserId(user.getId());
			}else{
				//查看自己的
				um.setUserId(user.getId());
			}
			//最新上传
			
			
			//心情日志
			p.setParam(um);
			Page<UserMood> findAll = userMoodService.findAll(p);
			for (UserMood mood : findAll.getList()) {
				mood.setContent(MyStringUtils.subStr(mood.getContent(), 10));
			}
			//留言
			UserWords word= new UserWords();
			word.setMessageSideId(user.getId());
			List<UserWords> words = userWordsService.findUserWords(word);
			for (UserWords userWords : words) {
				userWords.setWords(MyStringUtils.subStr(userWords.getWords(), 10));
			}
			model.addAttribute("moods", findAll.getList());
			model.addAttribute("words", words);
			model.addAttribute("userId", userId);
			return "userinfo";
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
