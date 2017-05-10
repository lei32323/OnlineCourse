<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安徽慕界网络科技有限公司</title>
<link href="<%=contextStatic %>/css/whir_common.css" rel="stylesheet" type="text/css" />
<link href="<%=contextStatic %>/css/whir_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextStatic %>/script/jquery-1.11.1.min.js"></script> 
<!--[if IE 6]>
<script type="text/javascript" src="script/iepng.js"></script>
<script type="text/javascript"> 
EvPNG.fix('img,.content,.svc-payment,.svc-gathering,.svc-weg,.svc-tx,.svc-credit,.svc-aa,.svc-donate,.svc-mobile,.svc-escore,.svc-rent,.svc-cashgift,.con,.aoff,'); </script>
<![endif]-->
</head>
<body>
<!--头部-->
<div id="header" style="height: 35px;border-bottom:1px solid #dfdfdf;margin-top: -15px">
  
  <div class="top" style="height: 120px">
    <div class="topmain">
      <div class="searchbox">
      <!--登陆后显示会员-->
<c:if test="${msg=='1' }">
	<div class="member"><div class="tuxiang"><img src="<%=contextPath %>/${user.headAddress}" width="35" height="35" /></div><div class="hyname"><a href="<%=contextPath %>/userinfo">${user.loginName }</a></div><div class="hyname"><a href="<%=contextPath %>/exitLogin">注销</a></div></div>
</c:if>
<c:if test="${msg!='1' || msg ==null }">
<div class="member" ><div class="huiyuan"><ul><li class="hy2"><a href="javascript:void(0);" onclick="showA();">注册</a></li></ul>		  				  <!--注册登录隐藏--->
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
      
        <div class="kjnav">
          <ul>
			<li class="navli2"><a href="#">收藏我们</a></li>
			<li class="navli3"><a href="#">新手引导</a></li>
			</ul>
        </div>
        <!--菜单导航-->
      <div class="topnavmenu">
        <div class="nav">
          <ul>
              <li style="line-height:80px"><a href="<%=contextPath %>/login" >首页</a></li>
            <li style="line-height:80px"><a href="中学时代.html">翻转课堂</a></li>
            <li style="line-height:80px"><a href="<%=contextPath %>/school">大学时代</a></li>
            <li style="line-height:80px"><a href="<%=contextPath %>/userinfo" class="on">个人中心</a></li>
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
</div>
<div class="clear" style="margin-top: 100px;"></div>
<div class="clear"></div>
<!--container-->
<div class="player_container" style="margin-top: 120px">
  <div class="mod_crumbs"> <a href="javascript:void(0)" target="_blank"title="首页">首页</a>&gt; <a href="javascript:void(0);" target="_blank" title="${video.name }">${video.name }</a> </div>
  <h1 class="mod_player_title" title="${video.name }">${video.name }</h1>
  <!--视频播放及相关视频-->
  <div class="mod_player_section cf" id="mod_inner">
  
    <div class="mod_player" id="mod_player">
    
    <video src="<%=contextPath %>/${video.videopath}" width="856px"  height="519px" controls="controls">
		您的浏览器不支持 video 标签。
<!-- 		<source src="movie.ogg" type="video/ogg" /> -->
<%--   		<source src="<%=contextPath %>/${video.videopath}" type="video/mp4" /> --%>
	</video>

</div>


    <div class="mod_video_album_section mod_video_album_section_v3" id="fullplaylist">
      <div class="mod_video_list_section ui_scroll_box mod_video_list_section_2">
        <div class="mod_video_list_content ui_scroll_content" id="mod_videolist">
          <div class="album_title">
            <h1>其他视频</h1>
          </div>
          <ul>
           <c:forEach items="${videos.list }" var="v">
           	 <li class="item"> <a class="item_link" href="<%=contextPath %>/tolookvideo?courseId=${v.courseId}&id=${v.id}" title="${v.name }" >
             <span class="album_pic"> <img width="117px" height="65px" src="<%=contextPath %>/${v.fengmian}" alt="${v.name }">
              <span class="figure_mask">  </span> </span>
              <div class="video_title"><strong>${v.name }</strong><br />
                播放：${v.total }次<br />
                评论：${v.commentCount }次</div>
              </a> </li>
           </c:forEach>
           
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--点赞-->
  <div class="agree"> <span class="dzsc"><a href="#" class="dianz">80</a><a href="#" class="kdsc">收藏</a></span> <span class="fenx">
    <div class="bshare-custom icon-medium">
      <div class="bsPromo bsPromo2"></div>
      <a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a></div>
    <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
    <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
    </span> <span class="cishu"><img src="images/gkcs.jpg" />&nbsp;&nbsp;4.245播放</span> <span style="float:right; margin-top:30px;">
    <input type="image" src="images/zxpc.jpg" style="float:left; margin-right:10px;" />
    <input type="image" src="images/xxbj.jpg" style="float:left;" />
    </span> </div>
  <!--视频简介-->
  <div class="playerjj">
    <ul>
      <li>
        <div class="upname">
          <div class="upnameimg"><img src="<%=contextStatic %>/images/upname.jpg" width="61" height="60"/></div>
          <div class="upnamet">昵称:<a href="#">拍客现场</a><br />
            <img src="images/xbg.jpg" /></div>
        </div>
        <div class="upinfo">
          <h1>视频简介:</h1>
          <p>8月16日，一场名为“帆帆加油，生命接力”的演出在糖果星光现场举行，义演的票务收入将通过公证转交给主办方中华少年儿童慈善救助基金会，用于十二岁淋巴瘤患者岳帆的救助。8月16日，一场名为“帆帆加油，生命接力”的演出在糖果星光现场举行，义演的票务收入将通过公证转交给主办方中华少年儿童慈善救助基金会，用于十二岁淋巴瘤患者岳帆的救助。</p>
          <span>9小时前 上传</span> </div>
      </li>
    </ul>
  </div>
</div>
<div class="clear"></div>
<!--留言-->
<div class="lybox">
  <div class="guestbook">
    <div class="left868">
      <!--留言板-->
      <div class="fbpl">
        <div class="plr"><span class="pltx"><a href="#"><img src="images/upname.jpg" width="61" height="61" /></a></span><span class="plname"><a href="#">Star_moon66250919</a></span><span class="plnum">所有评论<a href="#"> 21</a></span></div>
        <div class="zishu">0/300</div>
        <textarea name="textarea" class="input4"></textarea>
        <input type="image" src="<%=contextStatic %>/images/fbpl.jpg" style="margin-left:25px;" />
      </div>
      <!--留言列表-->
      <div class="lylist">
        <div class="title1">
          <h1>全部评论（21）</h1>
          <div class="plpage">
            <div class="page1"><span class="num"><font class="f_blue">1</font>/41</span><span class="prev">上一页</span><span class="next"><a href="#">下一页</a></span> </div>
          </div>
        </div>
        <ul class="pllist">
          <li>
            <div class="lyimg"><a href="#"><img src="<%=contextStatic %>/images/grzx/lyimg.jpg" /></a></div>
            <div class="lyinfo">
              <div class="lyname"><span class="myname"><a href="#">huo_zhenying</a></span></div>
              <div class="gxqm">为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多</div>
              <div class="reque">36分钟前 来自iPad客户端 <span class="zhuanfa"><a href="#">转发</a><a href="#">回复</a></span></div>
            </div>
          </li>
          <li>
            <div class="lyimg"><a href="#"><img src="<%=contextStatic %>/images/grzx/lyimg.jpg" /></a></div>
            <div class="lyinfo">
              <div class="lyname"><span class="myname"><a href="#">huo_zhenying</a></span></div>
              <div class="gxqm">为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多</div>
              <div class="reque">36分钟前 来自iPad客户端 <span class="zhuanfa"><a href="#">转发</a><a href="#">回复</a></span></div>
            </div>
          </li>
          <li>
            <div class="lyimg"><a href="#"><img src="<%=contextStatic %>/images/grzx/lyimg.jpg" /></a></div>
            <div class="lyinfo">
              <div class="lyname"><span class="myname"><a href="#">huo_zhenying</a></span></div>
              <div class="gxqm">为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多</div>
              <div class="reque">36分钟前 来自iPad客户端 <span class="zhuanfa"><a href="#">转发</a><a href="#">回复</a></span></div>
            </div>
          </li>
          <li>
            <div class="lyimg"><a href="#"><img src="<%=contextStatic %>/images/grzx/lyimg.jpg" /></a></div>
            <div class="lyinfo">
              <div class="lyname"><span class="myname"><a href="#">huo_zhenying</a></span></div>
              <div class="gxqm">为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多</div>
              <div class="reque">36分钟前 来自iPad客户端 <span class="zhuanfa"><a href="#">转发</a><a href="#">回复</a></span></div>
            </div>
          </li>
          <li>
            <div class="lyimg"><a href="#"><img src="<%=contextStatic %>/images/grzx/lyimg.jpg" /></a></div>
            <div class="lyinfo">
              <div class="lyname"><span class="myname"><a href="#">huo_zhenying</a></span></div>
              <div class="gxqm">为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多</div>
              <div class="reque">36分钟前 来自iPad客户端 <span class="zhuanfa"><a href="#">转发</a><a href="#">回复</a></span></div>
            </div>
          </li>
          <li>
            <div class="lyimg"><a href="#"><img src="<%=contextStatic %>/images/grzx/lyimg.jpg" /></a></div>
            <div class="lyinfo">
              <div class="lyname"><span class="myname"><a href="#">huo_zhenying</a></span></div>
              <div class="gxqm">为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多为什么不叫汪峰来更火 募捐的人更多</div>
              <div class="reque">36分钟前 来自iPad客户端 <span class="zhuanfa"><a href="#">转发</a><a href="#">回复</a></span></div>
            </div>
          </li>
        </ul>
        <div class="page"><span class="prev">上一页</span><span class="num"><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a></span><span class="next"><a href="#">下一页</a></span><em>217/5</em>转到
          <input name="textfield" type="text" value="5" class="inputpage"/>
          页
          <input type="submit" name="Submit" value="GO" class="btngo"/>
        </div>
      </div>
    </div>
    <!--推荐视频-->
    <div class="right306">
      <div class="title2">
        <h1>推荐视频</h1>
      </div>
      <div class="tjlist">
        <ul>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
          <li>
            <div class="tjimg"><img src="<%=contextStatic %>/images/my.jpg" width="138" height="83" /><span class="bftime">02:10</span></div>
            <div class="tjinfo">
              <h2><a href="#">快闪撑同志！LES美女映像节现场结婚！！</a></h2>
              <span>12万次播放</span></div>
          </li>
        </ul>
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
	
	if($("#content").val()==""){
		$("#content").val("搜索日志");
	}
	function next(index){
		$("#moodform").attr("action","<%=contextPath %>/tomoodlist");
		if($("#content").val()=="搜索日志"){
			$("#content").val("");
		}
		$("#page").val(index);
	//		alert($("#page").val())
		$("#moodform").submit();
		
	}
	$("#sch").click(function(){
		$("#moodform").attr("action","<%=contextPath %>/tomoodlist");
		if($("#content").val()=="搜索日志"){
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
		$("#moodform").attr("action","<%=contextPath %>/delmood");
		$("#moodform").submit();
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
