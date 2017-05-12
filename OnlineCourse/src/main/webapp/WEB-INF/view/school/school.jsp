<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网络课堂</title>
<link href="<%=contextStatic %>/css/whir_dx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextStatic %>/script/jquery.min.js"></script>
<script type="text/javascript" src="<%=contextStatic %>/script/column.js"></script>
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
<%--     <div class="logo"><a href="#"><img src="<%=contextStatic %>/images/home/b_logo.jpg" /></a></div> --%>
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
<!--内容-->
<div class="clear"></div>
<div class="subbanner"><img src="<%=contextStatic %>/images/banner.jpg" /></div>
<div class="xxjj">
  <div class="xxlogo">
    <div class="logo1"><img src="<%=contextStatic %>/images/xh1.jpg" /></div>
  </div>
  <div class="xxgk">
    <h1>${school.schoolName }</h1>
    <p>${school.schoolProfile }</p>
  </div>
</div>
<div id="container">
  <ul class="list6">
  		
  <c:forEach items="${courses.list }" var="course" varStatus="vs">
    <li>
      <div class="kcimg"><a href="<%=contextPath %>/tocourseforuser?id=${course.id}"><img src="<%=contextPath %>/${course.courseCover}" width="220" height="122"/></a></div>
      <div class="kcname"><a href="<%=contextPath %>/tocourseforuser?id=${course.id}">${course.name }</a></div>
      <div class="author"><a href="<%=contextPath %>/tocourseforuser?id=${course.id}">主讲：${course.teacher.name }</a></div>
      <div class="date"><fmt:formatDate value="${course.updateDate }" pattern="yyyy-MM-dd" />更新</div>
    </li>
   </c:forEach>
  </ul>
  <div class="qbschool">
    <div class="title9">
      <h1>老师列表</h1>
    </div>
    <ul class="list5">
    <c:forEach items="${teachers }" var="teacher">
      <li>
        <div class="lsimg"><img src="<%=contextPath %>/${teacher.userinfo.headAddress}" width="106px" height="100px" /></div>
        <div class="lsname" style="text-align: center;">${teacher.name }</div>
      </li>
     </c:forEach>
    </ul>
<!--     <div class="page"><span class="prev">上一页</span><span class="num"><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a></span><span class="next"><a href="#">下一页</a></span><em>217/5</em>转到 -->
<!--       <input name="textfield" type="text" value="5" class="inputpage"/> -->
<!--       页 -->
<!--       <input type="submit" name="Submit" value="GO" class="btngo"/> -->
<!--     </div> -->
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
</body>
</html>
