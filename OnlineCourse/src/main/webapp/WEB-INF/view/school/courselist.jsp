<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安徽慕界网络科技有限公司</title>
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
    <div class="logo"><a href="#"><img src="<%=contextStatic %>/images/home/b_logo.jpg" /></a></div>
    <div class="title">
      <h1>企业培训</h1>
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
      <ul>
        <li class="hy1"><a href="#" class="on"><img src="<%=contextPath %>/${user.headAddress}" /></a>
          <div class="subbox"><span></span><a href="#" >我的课程</a> <a href="<%=contextPath %>/toschoolinfo" >设置</a> </div>
        </li>
        <li class="hy2"><a href="#">退出</a></li>
      </ul>
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
    <ul class="menu4">
           <li><a href="#"><em>试题管理</em></a></li>
    </ul>
  </div>
  <div class="right740">
   		<form action="<%=contextPath %>/tocourselist" method="post" id="moodform">
   			<input type="hidden" name="resultCount" value="${page.resultCount }"/>
	    	<input type="hidden" name="totalPage" value="${page.totalPage }"/>
	    	<input type="hidden" name="page" id="page" value="${page.page }"/>
   		
   			 <div class="title11">
		      <h1>课程信息</h1>
		      <div class="nysearchbox">
		        <input type="text" value="课程名称" id="content" onFocus="this.value='';" onBlur="if(this.value==''){this.value='课程名称';}" name="name" class="input6"/>
		        <input type="image" src="<%=contextStatic %>/images/grzx/btn4.jpg" class="btn5" id="sch"/>
		      </div>
		    </div>
		    <div class="biji">
		      <div class="bijicz">
		        <div class="bjsc"><img src="<%=contextStatic %>/images/grzx/add.jpg" /><a href="<%=contextPath %>/tocourseinfo">添加课程</a></div>
		        <div class="bjsc"><img src="<%=contextStatic %>/images/grzx/bjsc.jpg" /><a href="javascript:void(0)" id="delbtn">删除</a></div>
		      </div>
		    </div>
		    <!--视频信息-->
		    <div class="sptitle">
		      <div class="wdspxx">
		        <input type="checkbox" class="input11" id="alls" />
		        全部课程</div>
		      <div class="wdspzt">课程名称</div>
		      <div class="wdspsj">发布时间</div>
		      <div class="wdspcz">操作</div>
		    </div>
		    <ul class="wdsplist">
		     	<c:forEach items="${page.list }" var="course" varStatus="vs">
		     	
			      <li class="libg"> <span class="checkbox">
			        <input type="checkbox" class="input12"  value="${course.id }"  name="list[${vs.index }].id" />
			        </span>
			        <div class="wdsp"><a href="javascript:void(0)"><img src="<%=contextPath %>/${course.courseCover}" width="146px"  height="87px"/></a></div>
			        <div class="spfb"><a href="javascript:void(0)">${course.name }</a></div>
			        <div class="wddate"><fmt:formatDate value="${course.updateDate }" pattern="yyyy-MM-dd" /></div>
			        <div class="wdcz"><a href="<%=contextPath %>/tocourseinfo?id=${course.id}">编辑</a></div>
			      </li>
		     	</c:forEach>
		    </ul>
		  	 <div class="page1"><span class="prev"><a href="javascript:void(0)" onclick="next(${page.page-1 })">上一页</a></span><span class="num">
          
       		 <c:forEach begin="1" end="${page.totalPage }" var="i">
				<a href="javascript:void(0)" onclick="next(${i })" <c:if test="${page.page==i }">class="on"</c:if>>${i }</a>
			</c:forEach>
			</span><span class="next"><a href="javascript:void(0)"  onclick="next(${page.page+1 })">下一页</a></span>
 		</div>
   		</form>
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
	if($("#content").val()==""){
		$("#content").val("课程名称");
	}
	function next(index){
		$("#moodform").attr("action","<%=contextPath %>/tocourselist");
		if($("#content").val()=="课程名称"){
			$("#content").val("");
		}
		$("#page").val(index);
	//		alert($("#page").val())
		$("#moodform").submit();
		
	}
	$("#sch").click(function(){
		$("#moodform").attr("action","<%=contextPath %>/tocourselist");
		if($("#content").val()=="课程名称"){
			$("#content").val("");
		}
		$("#resultCount").val("0");
		$("#page").val("1");
		$("#moodform").submit();	
	})
	$("#alls").click(function(){
		var result = $(this).prop("checked");
		$("[name^=list]").each(function(){
			   if(result){
				$(this).attr("checked","checked");
			}else{
				$(this).removeAttr("checked");
			}
			
		})
	})
	$("#delbtn").click(function(){
		$("#moodform").attr("action","<%=contextPath %>/delcourse");
		$("#moodform").submit();
	}) 
</script>
</body>
</html>