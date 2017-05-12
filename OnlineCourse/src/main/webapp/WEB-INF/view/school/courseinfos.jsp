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
<div id="container">
  <!--课程描述-->
  <div class="kcms">
 	<form action="<%=contextPath %>/tocourselist" method="post" id="moodform">
   			<input type="hidden" name="resultCount" value="${page.resultCount }"/>
	    	<input type="hidden" name="totalPage" value="${page.totalPage }"/>
	    	<input type="hidden" name="page" id="page" value="${page.page }"/>
    <div class="right735" style="width:100%">
      <div class="title5" >
        <h1>全部课程</h1>
      </div>
      <div class="classlist1" style="width:100%" >
      <ul>
      <c:forEach items="${page.list }" var="course" varStatus="vs">
        <li style="width:100%">
          <div class="classimg" style="margin-left:50px"><a href="#"><img src="<%=contextPath %>/${course.courseCover}" width="225px" height="124px"/></a></div>
          <div class="classinfo" style="margin-right:140px"> <span class="classname"><a href="javascript:void(0)">${course.name}</a></span> <span class="schoolname"><a href="javascript:void(0)">江苏海事职业技术学院</a></span> <span class="teacher">${course.teacher.name }</span> <span class="visit"><a href="<%=contextPath %>/tocourseforuser?id=${course.id}">查看课程信息 ></a></span>
            <input type="image" style="right:200px" onclick="javascript:href='<%=contextPath %>/tocourseforuser?id=${course.id}'" src="<%=contextStatic %>/images/home/button.jpg"  id="aaa" class="input2" />
          </div>
        </li>
        </c:forEach>
      </ul>
     <div class="page"><span class="prev"><a href="javascript:void(0)" onclick="next(${page.page-1 })">上一页</a></span><span class="num">
          
       		 <c:forEach begin="1" end="${page.totalPage }" var="i">
				<a href="javascript:void(0)" onclick="next(${i })" <c:if test="${page.page==i }">class="on"</c:if>>${i }</a>
			</c:forEach>
			</span><span class="next"><a href="javascript:void(0)"  onclick="next(${page.page+1 })">下一页</a></span>
 		</div>
    </div>
    </div>
    </form>
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

	function next(index){
		$("#moodform").attr("action","<%=contextPath %>/tocourseinfos");
		$("#page").val(index);
	//		alert($("#page").val())
		$("#moodform").submit();
		
	}
	$("#sch").click(function(){
		$("#moodform").attr("action","<%=contextPath %>/tocourseinfos");
		$("#resultCount").val("0");
		$("#page").val("1");
		$("#moodform").submit();	
	})
	
	$("#aaa").unbind("click");
</script>
</body>
</html>
