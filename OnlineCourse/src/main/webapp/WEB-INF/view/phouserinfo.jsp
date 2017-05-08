<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安徽慕界网络科技有限公司</title>
<link rel="stylesheet" href="<%=contextStatic %>/css/style.css" type="text/css" />
<link href="<%=contextStatic %>/css/whir_common.css" rel="stylesheet" type="text/css" />
<link href="<%=contextStatic %>/css/whir_grzx.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextStatic %>/script/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="<%=contextStatic %>/script/cropbox.js"></script>
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
            <li><a href="<%=contextPath %>/userinfo" class="on">个人中心</a></li>
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
<div class="subbox">
  <!--左侧部分-->
  <div class="left180">
    <div class="grtx">
     <div class="grimg"><img src="<%=contextPath %>/${user.headAddress}" /></div>
      <div class="grname"><a href="javascript:void(0)">${user.loginName }</a></div>
    </div>
    <ul class="menu1">
      <li class="on"><a onclick="return click_a('divOne_1')" style="cursor:pointer;">个人中心</a></li>
      <div class="menubox">
       	<p ><a href="<%=contextPath %>/userinfo" >信息完善</a></p>
        <p><a href="<%=contextPath %>/phouserinfo" style="color:#e10083">修改图像</a></p>
        <p><a href="<%=contextPath %>/topwduserinfo" >账户安全</a></p>
      </div>
    </ul>
    <script language="javascript" type="text/javascript">
        function click_a(divDisplay)
        {
            if(document.getElementById(divDisplay).style.display != "block")
            {
                document.getElementById(divDisplay).style.display = "block";
            }
            else
            {
                document.getElementById(divDisplay).style.display = "none";
            }
        }
    </script>
    <ul class="menu3">
      <li><a href="#"><em>视频管理</em></a></li>
      <div class="menubox">
        <p><a href="#" >我的收藏</a></p>
        <p><a href="个人中心-观看记录.html" >观看记录</a></p>
      </div>
    </ul>
    <ul class="menu4">
      <li><a href="#"><em>我的互动</em></a></li>
      <div class="menubox">
        <p><a href="<%=contextPath %>/tomynotelist" >我的笔记</a></p>
        <p><a href="<%=contextPath %>/tomoodlist" >心情日志</a></p>
        <p><a href="<%=contextPath %>/toaddquestion" >我的提问</a></p>
             <p><a href="<%=contextPath %>/myanswerlist" >我的回答</a></p>
        <p><a href="个人中心-留言.html" >留言板</a></p>
      </div>
    </ul>
    <ul class="menu5">
      <li><a href="个人中心-我的视频.html"><em>我的课程</em></a></li>
      <div class="menubox">
        <p><a href="个人中心-我的视频.html" >学习中视频</a></p>
        <p><a href="个人中心-我的视频.html" >猜你喜欢</a></p>
      </div>
    </ul>
  </div>
 <!--右侧部分-->
 <div class="right840">
 <div class="title6"><h1><a href="<%=contextPath %>/userinfo">信息完善</a></h1><h1><a href="<%=contextPath %>/phouserinfo" class="on">修改图像</a></h1><h1><a href="<%=contextPath %>/topwduserinfo" >账户安全</a></h1></div>
 <div class="display">
<%--  <img src="<%=contextStatic %>/images/grzx/xgpic.jpg" /> --%>
 	<div class="container">
  <div class="imageBox">
    <div class="thumbBox"></div>
    <div class="spinner" style="display: none">Loading...</div>
  </div>
  <div class="action"> 
    <!-- <input type="file" id="file" style=" width: 200px">-->
    <div class="new-contentarea tc"> <a href="javascript:void(0)" class="upload-img">
      <label for="upload-file">上传图像</label>
      </a>
      <input type="file" class="" name="upload-file" id="upload-file" />
    </div>
    <input type="button" id="btnCrop"  class="Btnsty_peyton" value="裁切">
    <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+"  >
    <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" >
  </div>
  <div class="cropped"></div>
</div>
<script type="text/javascript">
$(window).load(function() {
	var options =
	{
		thumbBox: '.thumbBox',
		spinner: '.spinner',
		imgSrc: '<%=contextPath %>/${user.headAddress}'
	}
	var cropper = $('.imageBox').cropbox(options);
	$('#upload-file').on('change', function(){
		var reader = new FileReader();
		reader.onload = function(e) {
			options.imgSrc = e.target.result;
			cropper = $('.imageBox').cropbox(options);
		}
		reader.readAsDataURL(this.files[0]);
		this.files = [];
	})
	$('#btnCrop').on('click', function(){
		var img = cropper.getDataURL();
		$('.cropped').html('');
		$('.cropped').append('<img id="img1" src="'+img+'" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
		$('.cropped').append('<img id="img2" src="'+img+'" align="absmiddle" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
		$('.cropped').append('<img id="img3" src="'+img+'" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');
	})
	$('#btnZoomIn').on('click', function(){
		cropper.zoomIn();
	})
	$('#btnZoomOut').on('click', function(){
		cropper.zoomOut();
	})
});
</script>
 </div>
 </div>
 <div style="width: 300px;margin-left: 280px"><input type="button" id="subPhoto" value="保存信息" class="btn1" /></div>
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
	//提交图片剪切信息到后台
  $("#subPhoto").click(function(){
      var img641 = $("#img1").attr("src");
      var param = {
        'image1': img641
      }
      $.post("<%=contextPath %>/fileupdate",param,function(data){
        	location.reload(true);
      });
  })
</script>
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
