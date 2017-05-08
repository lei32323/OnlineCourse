<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安徽慕界网络科技有限公司</title>
<link href="<%=contextStatic %>/css/whir_common.css" rel="stylesheet" type="text/css" />
<link href="<%=contextStatic %>/css/whir_grzx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextStatic %>/script/jquery-1.11.1.min.js"></script> 
<!--[if IE 6]>
<script type="text/javascript" src="script/iepng.js"></script>
<script type="text/javascript"> 
EvPNG.fix('img,.content,.svc-payment,.svc-gathering,.svc-weg,.svc-tx,.svc-credit,.svc-aa,.svc-donate,.svc-mobile,.svc-escore,.svc-rent,.svc-cashgift,.con,.aoff,'); </script>
<![endif]-->
</head>
<body>
<!--头部-->
<div class="head">
<div class="headm">
<!--登陆后显示会员-->
<c:if test="${msg=='1' }">
	<div class="member"><div class="tuxiang"><img src="<%=contextPath %>/${user.headAddress}" width="35" height="35" /></div><div class="hyname"><a href="<%=contextPath %>/userinfo">${user.loginName }</a></div><div class="hyname"><a href="<%=contextPath %>/exitLogin">注销</a></div></div>
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
            <li><a href="<%=contextPath %>/login" >首页</a></li>
            <li><a href="中学时代.html">翻转课堂</a></li>
             <li><a href="<%=contextPath %>/school">大学时代</a></li>
            <li><a href="<%=contextPath %>/userinfo" >个人中心</a></li>
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
<div class="clear" style="margin-top: 100px;"></div>
<div id="showmsg" style="width: 100%;text-align: center;height: 50px;font-size:14px;line-height: 50px;color:red;font-weight: bolder;cursor: pointer;">${result }</div>
<!--container-->
<div id="container">
  <div class="banner"><img src="<%=contextStatic %>/images/grzx/grbg.jpg" /></div>
  <!--个人信息-->
  <div class="grinfo">
    <div class="grphoto"><a href="#"><img src="<%=contextPath %>/${user.headAddress}" /></a></div>
    <div class="grxx">
      <div class="name"> <span class="grname">${user.loginName }</span>
<%--       <span class="dengji"><img src="<%=contextStatic %>/images/grzx/vip.jpg" /> 等级1</span><span class="paiming"> 今日排名：2000名 <img src="<%=contextStatic %>/images/grzx/up.jpg" /> </span>  --%>
      </div>
      <div class="grjj">王老师数学系专业，任教20年……</div>
<!--       <div class="visit"> <span class="jifen">访问量：20万  |  积分：200分</span> <span class="guanzhu"><a href="#">+ 关注</a></span> <span class="tuijian"><a href="#">收藏</a> | <a href="#">推荐</a></span> </div> -->
    </div>
  </div>
  <div class="mainbox">
    <div class="title">
      <h1>最新上传</h1>
      <div class="nysearch">
<!--         <input type="text" value="页面搜索" onFocus="this.value='';" onBlur="if(this.value==''){this.value='页面搜索';}" name=""  class="input3"/> -->
<%--         <input type="image" src="<%=contextStatic %>/images/grzx/button.jpg" class="btn2" /> --%>
      </div>
    	
    <div class="wenti"> 
     <c:if test="${user.type==0 }">
    	 <a href="<%=contextPath %>/qalist"><img src="<%=contextStatic %>/images/grzx/wtb.jpg" /></a>
     </c:if>
     </div>
    </div>
    <div class="clear"></div>
    <div class="left840">
      <div class="zxsc">
        <ul>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="jiage"><a href="#">￥15</a></div>
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
        </ul>
      </div>
      <!--正在学习的视频-->
      <div class="studyvideo">
        <div class="title2">
          <h1>正在学习的视频</h1>
        </div>
        <ul>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
          <li class="myvideo">
            <div class="myvideoimg"><img src="<%=contextStatic %>/images/my.jpg" />
              <h3><a href="#">Nancy带你【玩转法兰西】...</a></h3>
              <span class="play1"><a href="#" title="播放">播放</a></span><span class="time">02:10</span></div>
            <div class="title1">
              <div class="playtime"><a href="#">308次播放</a> | <a href="#">629次评论</a></div>
            </div>
          </li>
        </ul>
      </div>
      <div class="clear"></div>
   
    
    </div>
    
    
    <div class="right295">
      <div class="title4">
       	 <h1>心情日志</h1>
<!--         	<a href="#" class="more"></a> -->
        </div>
     	 <div class="xqlist">
        <ul>
        <c:forEach var="mood" items="${moods }">
          <li>
            <div class="xqtx"><img width="49px" height="49px" src="<%=contextPath %>/${user.headAddress}" /></div>
            <div class="xqnr">
              <div class="title5">
                <h2><a href="javascript:void(0)">${user.loginName }</a></h2>
                <span><fmt:formatDate value="${mood.updateDate }" pattern="yyyy-MM-dd" /> </span></div>
              <div class="xyzs">${mood.content }</div>
            </div>
          </li>
         </c:forEach>
        </ul>
      </div>
      
     <!--目友留言-->
      <div class="title4" style="margin-top:80px">
        <h1>校友留言</h1>
      </div>
      <div class="xqlist">
        <ul>
        	<c:forEach items="${words }" var="word">
	          <li>
	            <div class="xqtx"><img  width="49px" height="49px" src="<%=contextPath %>/${user.headAddress}" /></div>
	            <div class="xqnr">
	              <div class="title5">
	                <h2><a href="javascript:void(0)">${word.userinfo.loginName }</a></h2>
	                <span><fmt:formatDate value="${word.updateDate }" pattern="yyyy-MM-dd" /></span></div>
	              <div class="xyzs">${word.words }</div>
	            </div>
	          </li>
          </c:forEach>
        </ul>
      </div>
      <!--留言板-->
      <div class="title4">
        <h1>留言板</h1>
      </div>
      <div class="team_l">
        <form action="<%=contextPath %>/adduserword" method="post">
        	<textarea name="word" cols="48" rows="10" class="input2" value="说点什么吧..."></textarea>
        		<input type="hidden" name="messageSideId" value="${userId }"/>
	        <br />
<%-- 	        <div class="biaoqing"><img src="<%=contextStatic %>/images/grzx/bq.jpg" /><a href="#">添加表情</a></div> --%>
	        <input type="submit" name="Submit" class="btn3" value="确定发布">
        </form>
      </div>
    </div>
  </div>
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
	$("#showmsg").hide();
	var msg = "${msg}";
	var result = "${result}";
	if((msg!=""&&msg!="1")||result!=""){
		$("#showmsg").show();
	}else{
		$("#showmsg").hide();
	}
	$("#showmsg").click(function(){
		$("#showmsg").hide();
	})
</script>
</body>
</html>
  