<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%
 	String contextPath=application.getContextPath();
 	String contextStatic=contextPath+"/static";
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安徽慕界网络科技有限公司</title>
<link href="<%=contextStatic %>/css/whir_common.css" rel="stylesheet" type="text/css" />
<link href="<%=contextStatic %>/css/whir_home.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextStatic %>/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=contextStatic %>/script/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="<%=contextStatic %>/script/index_solid.js"></script>
<script type="text/javascript" src="<%=contextStatic %>/script/column.js"></script>
<script type="text/javascript" src="<%=contextStatic %>/script/zhuce.js"></script>

<!--[if IE 6]>
<script type="text/javascript" src="script/iepng.js"></script>
<script type="text/javascript"> 
EvPNG.fix('img,.content,.svc-payment,.svc-gathering,.svc-weg,.svc-tx,.svc-credit,.svc-aa,.svc-donate,.svc-mobile,.svc-escore,.svc-rent,.svc-cashgift,.con,.aoff,'); </script>
<![endif]-->
<script language="javascript" type="text/javascript">
        window.moveTo(-4,-4);
        window.resizeTo(screen.availWidth,screen.availHeight);
    </script>
    
   
</head>
<body>  
<!--头部-->
<div class="head">
<div class="headm">
<!--登陆后显示会员-->
<c:if test="${msg=='1' }">
	<div class="member"><div class="tuxiang"><img src="<%=contextPath %>/${user.headAddress}" width="35" height="35" /></div><div class="hyname"><a href="<%=contextPath %>/touserinfo">${user.loginName }</a></div><div class="hyname"><a href="<%=contextPath %>/exitLogin">注销</a></div></div>
</c:if>
<c:if test="${msg!='1' || msg ==null }">
<div class="member"><div class="huiyuan"><ul><li class="hy2"><a href="javascript:void(0);" onclick="showA();">注册</a></li></ul>		  				  <!--注册登录隐藏--->
	  <div id="pop" class="pop" style="display:none"> 
<div class="pop_head"><a href="javascript:void(0);" onclick="hideA()">关闭</a></div> 
<div class="pop_body">
<h1>用户注册</h1>
<div class="zhuce">
<form action="<%=contextPath %>/regin" method="post" id="registForm">
	<input type="text" class="inputl" value="请输入真实邮箱" name= "email" onFocus="this.value='';" onBlur="if(this.value==''){this.value='请输入真实邮箱';}" />
	<input type="text" class="inputr" value="请输入用户名" name= "loginName" onFocus="this.value='';" onBlur="if(this.value==''){this.value='请输入用户名';}" />
	<input type="password" class="inputb" value="请输入密码" onFocus="this.value='';" name="loginpwd" onBlur="if(this.value==''){this.value='请输入密码';}" />
	<select name="type"  class="inputr"  style="width:335px" >
					<option value="0" >学生</option>
					<option value="1" >教师</option>
					<option value="2" >学校管理员</option>
			</select>
	<div class="dlk"><a href="#" class="regist" id="regist">注册</a></div>
</form>
</div>
</div> 
</div> </div></div>
</c:if>

<!--快捷导航-->
<div class="kjnav">
<ul>
<li class="navli2"><a href="#">收藏我们</a></li>
<li class="navli3"><a href="#">新手引导</a></li>
</ul>
</div>
</div>
</div>
<div id="header">
  <div class="top">
    <div class="topmain">
   
      <!--菜单导航-->
      <div class="topnavmenu">
        <div class="nav">
          <ul>
            <li><a href="<%=contextPath %>/login" class="on">首页</a></li>
            <li><a href="中学时代.html">翻转课堂</a></li>
            <li><a href="<%=contextPath %>/school">大学时代</a></li>
            <li><a href="<%=contextPath %>/userinfo">个人中心</a></li>
          </ul>
        </div>
        <div class="question">
          <ul>
         <li class="li6"><a href="<%=contextPath %>/toaddquestion">我要提问</a></li>
             <li class="li7"><a href="<%=contextPath %>/qalist">我要问答</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!--底部-->
<div class="clear"></div>
<div id="showmsg" style="width: 100%;text-align: center;height: 50px;font-size:14px;line-height: 50px;color:red;font-weight: bolder;cursor: pointer;">${result }</div>
<!--专题and图片切换-->
<div class="clear"></div>
<div class="topics">
  <!--图片切切换-->
  <div id="banner">
    <div id="ifocus">
      <div style="overflow:hidden" id="ifocus_pic">
        <div style="overflow:hidden; top: 0px; left: 0px" id="ifocus_piclist">
          <ul>
            <!--大图_start -->
            <li><a href="#" target=_blank><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"></a> </li>
            <li><a href="#" target=_blank><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"></a> </li>
            <li><a href="#" target=_blank><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"></a> </li>
            <li><a href="#" target=_blank><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"></a> </li>
            <li><a href="#" target=_blank><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"></a>
              <!--大图_end -->
            </li>
          </ul>
        </div>
        <div id="ifocus_opdiv"></div>
        <div id="ifocus_tx">
          <ul>
            <!--小图列表_start -->
            <li class="current">
            <li class="normal">
            <li class="normal">
            <li class="normal">
            <li class="normal">
              <!--小图列表_end -->
            </li>
          </ul>
        </div>
        <div id="ifocus_btn">
          <!--小图_start -->
          <ul>
            <li class="current"><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"> </li>
            <li class="normal"><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"> </li>
            <li class="normal"><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"> </li>
            <li class="normal"><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"> </li>
            <li class="normal"><img border=0 alt=目课网 src="<%=contextStatic %>/images/pic.jpg"></li>
          </ul>
          <!--小图_end -->
        </div>
      </div>
    </div>
  </div>
  <!--专题栏目-->
  <div class="ztzl">
        <ul class="list"style="float:right;padding-right:55px;margin-top:-40px;background:#f0f0f0;">
          <li style="height: 20px"><h1 style="width:100px; line-height:30px; text-align:center; font-family:'微软雅黑'; font-size:16px; color:#3baae2; padding-top: 4px">公告栏：</h1></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
        </ul>
  </div>
</div>
<!--猜你喜欢 and 用户登录-->
<div class="column">
  <!--猜你喜欢-->
  <div class="like">
    <div class="likecolumn">
      <div class="title">
        <h1>猜你喜欢</h1>
        <h2 id="one1" onmouseover="setTab('one',1,3)" class="hover"><a href="个人中心-我的视频.html">收藏视频</a></h2>
        <h2 id="one2" onmouseover="setTab('one',2,3)"><a href="个人中心-我加入的班级.html">观看记录</a></h2>
<!--         <h2 id="one3" onmouseover="setTab('one',3,3)"><a href="#">观看记录</a></h2> -->
        <div class="change"><a href="#">换一组</a></div>
      </div>
      <div class="likelist" id="con_one_1">
        <div class="likevideo fl">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
      </div>
      <div class="likelist" id="con_one_2" style="display:none">
        <div class="likevideo fl">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】冷漠的解药</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
      </div>
      <div class="likelist" id="con_one_3" style="display:none">
        <div class="likevideo fl">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">创造、创新和改变</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
        <div class="likevideo fl ml20">
          <div class="videoimg"><img src="<%=contextStatic %>/images/pic1.jpg" /><span class="time">07:20</span></div>
          <div class="videotitle"><a href="视频播放详细页.html" target="_blank">【TED】外表不是全部</a></div>
          <div class="videoinfo"><a href="视频播放详细页.html">74,308次播放</a> | <a href="#">1,629次评论</a></div>
        </div>
      </div>
    </div>
    <!--用户登录-->
    <div class="right269">
      <div class="title1">
        <h1>用户登录</h1>
      </div>
     <form action="<%=contextPath %>/login" method="post" id="loginForm">
     	 <div class="login">
		    <div class="user">用户名：<input type="text" value="请输入用户名"  onFocus="this.value='';" name="loginName"  ${user.loginName } class="input1"/></div>
			<div class="password">密&nbsp;&nbsp;&nbsp;码 ：<input type="password" value="请输入密码"  onFocus="this.value='';" name="loginpwd" onBlur="if(this.value==''){this.value='请输入密码';}" class="input1"/></div>
			<div class="password">类&nbsp;&nbsp;&nbsp;型 ：<select name="type" class="input1"  style="width:200px">
					<option value="0" <c:if test="${user.type==0 }" >selected='selected'</c:if>>学生</option>
					<option value="1" <c:if test="${user.type==1 }" >selected='selected'</c:if>>教师</option>
					<option value="2" <c:if test="${user.type==2 }" >selected='selected'</c:if>>学校管理员</option>
			</select></div>
	        <div class="tiyan"><a href="javascript:void(0)" id="login">登陆</a></div>
	      </div>
     </form>
     
<!--        <div class="title1"> -->
<!--         <h1>用户登录</h1> -->
<!--       </div> -->
<%--      <form action="<%=contextPath %>/exit" method="post" id="exitForm"> --%>
<!--      	 <div class="login"> -->
<!-- 		    <div class="user">用户名：<input type="text" value="请输入用户名"  onFocus="this.value='';" name="loginName" onBlur="if(this.value==''){this.value='请输入用户名';}" class="input1"/></div> -->
<!-- 			<div class="password">密&nbsp;&nbsp;&nbsp;码 ：<input type="password" value="请输入密码"  onFocus="this.value='';" name="loginpwd" onBlur="if(this.value==''){this.value='请输入密码';}" class="input1"/></div> -->
<!-- 			<div class="password">类&nbsp;&nbsp;&nbsp;型 ：<select name="type" class="input1" style="width:200px"> -->
<!-- 					<option>学生</option> -->
<!-- 					<option>教师</option> -->
<!-- 			</select></div> -->
<!-- 	        <div class="tiyan"><a href="javascript:void(0)" id="login">登陆</a></div> -->
<!-- 	      </div> -->
<!--      </form> -->
    </div>
  </div>
</div>
<!--原创精品 and 推荐排行-->
<div class="column1">
  <div class="original">
    <!--原创精品-->
    <div class="oricolumn">
      <div class="title2">
        <h1>原创精品</h1>
        <h2><a href="原创列表页.html">目课出品</a></h2>
      </div>
      <div class="clear"></div>
      <div class="orilist">
        <div class="topvideo"> <img src="<%=contextStatic %>/images/pic3.jpg" />
          <div class="titleinfo">
            <h1><a href="视频播放详细页.html">杨亚雄老师的雅思实战口语课【大耳朵英语】</a></h1>
            <div class="spxx"><a href="视频播放详细页.html">74,308次播放</a> | <a href="视频播放详细页.html">1,629次评论</a></div>
            <div class="price"><a href="视频播放详细页.html">￥10</a></div>
          </div>
          <span class="sptime">1:07:20</span> <span class="play"><a href="#" target="_blank" title="播放">播放</a></span> </div>
        <div class="splist">
          <div class="myvideo mb15">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="视频播放详细页.html">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="视频播放详细页.html" title="播放">播放</a></span></div>
            <div class="title3">
              <div class="jiage"><a href="视频播放详细页.html">￥15</a></div>
              <div class="playtime"><a href="视频播放详细页.html">74,308次播放</a> | <a href="视频播放详细页.html">1,629次评论</a></div>
            </div>
          </div>
          <div class="myvideo ml20 mb15">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="视频播放详细页.html">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="视频播放详细页.html" title="播放">播放</a></span></div>
            <div class="title3">
              <div class="jiage"><a href="视频播放详细页.html">￥15</a></div>
              <div class="playtime"><a href="视频播放详细页.html">74,308次播放</a> | <a href="视频播放详细页.html">1,629次评论</a></div>
            </div>
          </div>
          <div class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="视频播放详细页.html">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="视频播放详细页.html" title="播放">播放</a></span></div>
            <div class="title3">
              <div class="jiage"><a href="视频播放详细页.html">￥15</a></div>
              <div class="playtime"><a href="视频播放详细页.html">74,308次播放</a> | <a href="视频播放详细页.html">1,629次评论</a></div>
            </div>
          </div>
          <div class="myvideo ml20">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="视频播放详细页.html">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="视频播放详细页.html" title="播放">播放</a></span></div>
            <div class="title3">
              <div class="jiage"><a href="视频播放详细页.html">￥15</a></div>
              <div class="playtime"><a href="视频播放详细页.html">74,308次播放</a> | <a href="视频播放详细页.html">1,629次评论</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--推荐排行-->
    <div class="right269">
      <div class="title4">
        <h1>推荐排行</h1>
        <h2>TOP</h2>
      </div>
      <div class="paihang">
        <ul class="list">
          <li><span class="dig">1</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig">2</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig">3</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig1">4</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig1">5</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig1">6</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig1">7</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
          <li><span class="dig1">8</span><a href="#">中考语文古诗词鉴赏题型及解题技巧</a></li>
        </ul>
      </div>
      <div class="ad"><a href="#"><img src="<%=contextStatic %>/images/ad2.jpg" /></a></div>
    </div>
  </div>
</div>
<!--人气班级-->
<div class="classes">
  
</div>
<!--状元楼-->
<div class="champion">
  <div class="picScroll-left1">
    <div class="hd">
      <h1>状元楼</h1>
      <ul>
      </ul>
    </div>
    <div class="bd">
      <ul class="picList">
        <li>
          <div class="pic"><a href="#" target="_blank"><img src="<%=contextStatic %>/images/pic5.jpg" /></a></div>
          <div class="titles"><span class="zyname"><a href="#" target="_blank">北京文科状元</a></span><br />
            <span class="zyinfo"> 昵称：喵喵<br />
            学校：清华大学<br />
            积分：<a href="#">835</a></span></div>
        </li>
        <li>
          <div class="pic"><a href="#" target="_blank"><img src="<%=contextStatic %>/images/pic5.jpg" /></a></div>
          <div class="titles"><span class="zyname"><a href="#" target="_blank">北京文科状元</a></span><br />
            <span class="zyinfo"> 昵称：喵喵<br />
            学校：清华大学<br />
            积分：<a href="#">835</a></span></div>
        </li>
        <li>
          <div class="pic"><a href="#" target="_blank"><img src="<%=contextStatic %>/images/pic5.jpg" /></a></div>
          <div class="titles"><span class="zyname"><a href="#" target="_blank">北京文科状元</a></span><br />
            <span class="zyinfo"> 昵称：喵喵<br />
            学校：清华大学<br />
            积分：<a href="#">835</a></span></div>
        </li>
        <li>
          <div class="pic"><a href="#" target="_blank"><img src="<%=contextStatic %>/images/pic5.jpg" /></a></div>
          <div class="titles"><span class="zyname"><a href="#" target="_blank">北京文科状元</a></span><br />
            <span class="zyinfo"> 昵称：喵喵<br />
            学校：清华大学<br />
            积分：<a href="#">835</a></span></div>
        </li>
        <li>
          <div class="pic"><a href="#" target="_blank"><img src="<%=contextStatic %>/images/pic5.jpg" /></a></div>
          <div class="titles"><span class="zyname"><a href="#" target="_blank">北京文科状元</a></span><br />
            <span class="zyinfo"> 昵称：喵喵<br />
            学校：清华大学<br />
            积分：<a href="#">835</a></span></div>
        </li>
        <li>
          <div class="pic"><a href="#" target="_blank"><img src="<%=contextStatic %>/images/pic5.jpg" /></a></div>
          <div class="titles"><span class="zyname"><a href="#" target="_blank">北京文科状元</a></span><br />
            <span class="zyinfo"> 昵称：喵喵<br />
            学校：清华大学<br />
            积分：<a href="#">835</a></span></div>
        </li>
      </ul>
    </div>
  </div>
  <script type="text/javascript">
		jQuery(".picScroll-left1").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,trigger:"click"});
		</script>
</div>
<!--学霸天地-->
<div class="schoolpa">
  
</div>
<!--问题解答and难题悬赏-->
<div class="wenti">
  <div class="wenticolumn">
    <div class="title6">
      <h1>最新提问</h1>
	  <div class="change"><a href="#">更多</a></div>
    </div>
    <div class="wtjdlist">
      <div class="toppic"><img src="<%=contextStatic %>/images/pic10.jpg" /></div>
      <ul>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
        <li><span><a href="#">8回答</a></span>·<a href="#">中考语文古诗词鉴赏题型及解题技巧?</a></li>
      </ul>
    </div>
  </div>
  <div class="wenticolumn" style="float:right;">
    <div class="txtScroll-top">
      <div class="hd">
        <h1>热门提问</h1>
        <ul>
        </ul>
      </div>
      <div class="bd">
        <ul class="infoList">
          <li><span class="icon"><img src="<%=contextStatic %>/images/qiang.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/ji.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
          <li><span class="icon"><img src="<%=contextStatic %>/images/arrow.jpg" /></span><a href="#" target="_blank">钢铁是怎样炼成的读怎样炼成的读怎样炼成的读后了我的提感400字</a><span class="jb">25</span></li>
        </ul>
      </div>
    </div>
    <script type="text/javascript">
		jQuery(".txtScroll-top").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:7});
		</script>
  </div>
</div>
<!--企业培训-->
<div class="qypx">
  
</div>
<div class="ad">
  <div class="fl"><a href="#"><img src="<%=contextStatic %>/images/ad.jpg" /></a></div>
  <div class="fr"><a href="#"><img src="<%=contextStatic %>/images/ad1.jpg" /></a></div>
</div>
<div class="clear"></div>
<div id="footer">
  <div class="links">
    <div class="linkpic">
      <h1>合作单位</h1>
      <div class="picshow">
        <div id="demo" style="width:1017px; height:49px; overflow:hidden;">
          <table border=0 align=center cellpadding=0 cellspacing=0 cellspace=0 >
            <tr>
              <td valign=top  id=marquePic1><table width='100%' border='0' cellspacing='0'>
                  <tr>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link1.jpg" /></a></td>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link2.jpg" /></a></td>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link3.jpg" /></a></td>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link4.jpg" /></a></td>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link5.jpg" /></a></td>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link6.jpg" /></a></td>
                    <td align=center><a href="#" target="_blank"><img src="<%=contextStatic %>/images/link7.jpg" /></a></td>
                  </tr>
                </table></td>
              <td id=marquePic2 valign=top></td>
            </tr>
          </table>
        </div>
        <script type="text/javascript">
var speed=50 
marquePic2.innerHTML=marquePic1.innerHTML 
function Marquee(){ 
if(demo.scrollLeft>=marquePic1.scrollWidth){ 
demo.scrollLeft=0 
}else{ 
demo.scrollLeft++ 
} 
} 
var MyMar=setInterval(Marquee,speed) 
demo.onmouseover=function() {clearInterval(MyMar)} 
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)} 
</script>
      </div>
    </div>
    <div class="clear"></div>
    <!--合作伙伴-->
    <div class="linktext">
      <h1>合作伙伴</h1>
      <div class="textlink"><a href="#" target="_blank">毒霸网址大全</a> | <a href="#" target="_blank">搜狗网址导航</a> |<a href="#" target="_blank"> 2345影视</a> | <a href="#" target="_blank">hao123</a> | <a href="#" target="_blank">搜狗搜索</a> |<a href="#" target="_blank"> 搜库</a> | <a href="#" target="_blank">必应</a> | <a href="#" target="_blank">豆瓣</a> | <a href="#" target="_blank">易迅网</a> |<a href="#" target="_blank"> 猫扑</a> | <a href="#" target="_blank">百度贴吧</a> |<a href="#" target="_blank"> 新浪微博</a> |<a href="#" target="_blank"> 果壳网</a> | <a href="#" target="_blank">人民数字</a> | <a href="#" target="_blank">114啦影视</a> | <a href="#" target="_blank">太平洋时尚网</a> | <a href="#" target="_blank">健康卫视</a> | <a href="#" target="_blank">海报网</a> | <a href="#" target="_blank">电影网</a> | <a href="#" target="_blank">178游戏网</a> | <a href="#" target="_blank">刷机精灵</a> | <a href="#" target="_blank">智能电视网</a> | <a href="#" target="_blank">奇珀市场</a> | <a href="#" target="_blank">电视家</a></div>
    </div>
  </div>
  <div class="copyright">
    <div class="Navigation"><a href="#">关于目课</a><a href="#">合作伙伴</a><a href="#">营销中心</a><a href="#">廉正举报</a><a href="#">联系客服</a><a href="#">开放平台</a><a href="#">诚征英才</a><a href="#">联系我们</a><a href="#">网站地图</a><a href="#">法律声明</a></div>
    <div class="copy">Copyright © 2014 MYCLASS.C0M. All Rights Reserved. Designed by:<a href="http://www.wanhu.cn">Wanhu</a><br />
      目课网 版权所有 目课网经营许可证<br />
      <font class="f_red">当前在线人数：<b>154588</b> 人</font></div>
  </div>
</div>
<script>
//登陆
	jQuery("#login").click(function(){
		jQuery("#loginForm").submit();
	});
	jQuery("#regist").click(function(){
		jQuery("#registForm").submit();
	});

</script>
<script>
	jQuery("#showmsg").hide();
	var msg = "${msg}";
	var result = "${result}";
	if(result!=""){
		jQuery("#showmsg").show();
	}else{
		jQuery("#showmsg").hide();
	}
	jQuery("#showmsg").click(function(){
		jQuery("#showmsg").hide();
	})
</script>
</body>
</html>
