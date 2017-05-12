<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网络课堂</title>
<link href="<%=contextStatic %>/css/whir_dx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextStatic %>/script/jquery-1.11.1.min.js"></script> 
<script type="<%=contextStatic %>/text/javascript" src="script/column.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="script/iepng.js"></script>
<script type="text/javascript"> 
EvPNG.fix('img,.content,.svc-payment,.svc-gathering,.svc-weg,.svc-tx,.svc-credit,.svc-aa,.svc-donate,.svc-mobile,.svc-escore,.svc-rent,.svc-cashgift,.con,.aoff,'); </script>
<![endif]-->
</head>
<body>
<!--头部-->
<div id="head">
  <div class="top">
    <div class="logo"></div>
    <div class="title">
      <h1>网络课堂</h1>
    </div>
    <div class="nav">
      <ul>
    	 <li class="li1"><a href="<%=contextPath %>/school">大学</a></li>
        <li class="li2"><a href="<%=contextPath %>/tocourseinfos">课程</a></li>
      </ul>
    </div>
    <div class="search">
      <input type="text" class="input" />
      <input type="image" src="<%=contextStatic %>/images/home/btn.jpg" class="btn" />
    </div>
    <div class="hyinfo">
       <c:if test="${user!=null }">
      <ul>
        <li class="hy1"><a href="#" class="on"><img src="<%=contextPath %>/${user.headAddress}" /></a>
           <div class="subbox"><span></span><a href="#" >我的课程</a> <a href="<%=contextPath %>/userinfo" >个人信息</a>  <a href="<%=contextPath %>/toschoolinfo" >设置</a> </div>
          </li>
        <li class="hy2"><a href="<%=contextPath %>/exitLogin">退出</a></li>
      </ul>
      </c:if>
      <c:if test="${user==null }">
      	<ul>
        	<li class="hy2"><a href="<%=contextPath %>/userinfo">登陆</a></li>
      	</ul>
      </c:if>
      <script type="text/javascript">
   
 $(document).ready(function(){
//	$('.hyinfo li ').hover(function(){$(this).find('.subbox').stop(true,true).slideToggle(); });
  $('.hy1').mouseenter(function(){

$(this).find('.subbox').css("display","block");//you can give it a speed

  });
  $('.hy1').mouseleave(function(){
$(this).find('.subbox').css("display","none");

 
  //jQuery(this).css("background-image", "none");
   

  });
  
});

</script>
    </div>
  </div>
</div>
<!--banner-->
<div class="banner"><img src="<%=contextStatic %>/images/home/banner.jpg" />
  <div class="school"><span><a href="#">${school.schoolName }>></a></span></div>
</div>
<!--内容-->
<div class="clear"></div>
<div id="container">
  <div class="left180">
    <div class="grtx">
      <div class="grimg"><img src="<%=contextPath %>/${school.imagePath}" /></div>
      <div class="grname"><a href="班级.html">${school.schoolName }</a></div>
    </div>
    <ul class="menu1">
      <li ><a href="<%=contextPath %>/toschoolinfo"><em>高校信息</em></a></li>
    </ul>
    <ul class="menu3">
      <li class="on"><a href="<%=contextPath %>/tocourselist"><em>课程管理</em></a></li>
    </ul>

  </div>
  <div class="right740">
    <div class="title10">
      <h1><a href="javascript:void(0)" class="on">高校课程</a></h1>
    </div>
    <div class="display">
      <form action="<%=contextPath %>/courseinfo" method="post"  enctype="multipart/form-data">
      		<input  type="hidden" name="id" value="${course.id }"/>
      		<table width="840" height="750" align="center" cellspacing="0" cellpadding="0" class="tab">
        <tr>
          <td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程名称:</b></td>
          <td>&nbsp;&nbsp;&nbsp;
            <input type="text" class="input1"  name="name" style="color:black" value="${course.name }"/></td>
        </tr>
		<tr>
          <td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>授课老师:</b></td>
          <td>&nbsp;&nbsp;&nbsp;
            <select class="input1" name="teacher.id" style="color:black">
            	<option value="0">请选择</option>
            <c:forEach items="${teachers }" var="t">
            	<option value="${t.id }" <c:if test="${t.id==course.teacher.id }"> selected='selected'</c:if>>${t.name }  </option>
            </c:forEach>
            </select></td>
        </tr>
	        <tr>
	          <td valign="top"><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程封面:</b></td>
	          <td><table cellpadding="0" cellspacing="0">
	              <tr>
	                <td>&nbsp;&nbsp;&nbsp;
	                  <input type="file" class="input1" style="color:black"  name="file"/>
	                  &nbsp;&nbsp;&nbsp;</td>
	              </tr>
	             
	            </table></td>
	        </tr>
	        <tr>
	          <td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>课程概述:</b></td>
	          <td>&nbsp;&nbsp;&nbsp;
	            <textarea class="input4" style="width:435px; height:128px;color:black" name="courseSummary">${course.courseSummary }</textarea></td>
	        </tr>
			<tr>
	          <td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>证书要求:</b></td>
	          <td>&nbsp;&nbsp;&nbsp;
	            <textarea class="input4" style="width:435px; height:128px;color:black" name="certificateRequirement">${course.certificateRequirement }</textarea></td>
	        </tr>
			<tr>
	          <td><font class="f_red">*</font>&nbsp;&nbsp;&nbsp;<b>授课大纲:</b></td>
	          <td>&nbsp;&nbsp;&nbsp;
	            <textarea class="input4" style="width:435px; height:128px;color:black" name="outline">${course.outline }</textarea></td>
	        </tr>
	        <tr>
	          <td></td>
	          <td colspan="2">&nbsp;&nbsp;&nbsp;
	            <input type="submit" value="创建视频" class="btn1" />&nbsp;&nbsp;&nbsp;<input  type="button" value="视频管理" class="btn4" id="btn4" /></td>
	        </tr>
	      </table>
      </form>
    </div>
  </div>
</div>
<div class="clear"></div>
<div id="footer">
  <div class="links">
    
    <div class="clear"></div>
    <!--合作伙伴-->
    <div class="linktext">
      <h1>合作伙伴</h1>
      <div class="textlink"><a href="#" target="_blank">毒霸网址大全</a> | <a href="#" target="_blank">搜狗网址导航</a> |<a href="#" target="_blank"> 2345影视</a> | <a href="#" target="_blank">hao123</a> | <a href="#" target="_blank">搜狗搜索</a> |<a href="#" target="_blank"> 搜库</a> | <a href="#" target="_blank">必应</a> | <a href="#" target="_blank">豆瓣</a> | <a href="#" target="_blank">易迅网</a> |<a href="#" target="_blank"> 猫扑</a> | <a href="#" target="_blank">百度贴吧</a> |<a href="#" target="_blank"> 新浪微博</a> |<a href="#" target="_blank"> 果壳网</a> | <a href="#" target="_blank">人民数字</a> | <a href="#" target="_blank">114啦影视</a> | <a href="#" target="_blank">太平洋时尚网</a> | <a href="#" target="_blank">健康卫视</a> | <a href="#" target="_blank">海报网</a> | <a href="#" target="_blank">电影网</a> | <a href="#" target="_blank">178游戏网</a> | <a href="#" target="_blank">刷机精灵</a> | <a href="#" target="_blank">智能电视网</a> | <a href="#" target="_blank">奇珀市场</a> | <a href="#" target="_blank">电视家</a></div>
    </div>
  </div>
  <div class="copyright">
    <div class="Navigation"><a href="#">关于我们</a><a href="#">合作伙伴</a><a href="#">营销中心</a><a href="#">廉正举报</a><a href="#">联系客服</a><a href="#">开放平台</a><a href="#">诚征英才</a><a href="#">联系我们</a><a href="#">网站地图</a><a href="#">法律声明</a></div>
    <div class="copy">Copyright © 2014 MYCLASS.C0M. All Rights Reserved. Designed by:<a href="#">Wanhu</a><br />
      目课网 版权所有 目课网经营许可证<br />
  </div>
</div>
</div>
<script>
	$("#btn4").click(function(){
		location.href="<%=contextPath %>/tovoielist?courseId=${course.id}";
	})
</script>
</body>
</html>
