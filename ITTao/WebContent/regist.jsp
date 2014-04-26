<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>title</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="视频,搞笑,娱乐,综艺,电视剧,体育,音乐">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/base_Js/jquery-1.9.1.js"
	charset="utf-8"></script>
<script type="text/javascript" src="js/base_Js/jquery.lazyload.js"
	charset="utf-8"></script>
<link rel="shortcut icon" href="images/logo.png" />
<!-- 
<link rel="stylesheet" type="text/css" href="css/base_css/bootstrap.css"> -->
<link rel="stylesheet" type="text/css" href="css/video_playPage.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap2.5.css">

<script language="javascript" type="text/javascript"
	src="js/video_playPage.js"></script>
<!-- 播放区域的引入 -->
<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		var email = $("#login_username");
		var password = $("#login_password");
		var checkPassword = $("#check_password");
		var alertDanger = $("#alertDanger");
		alertDanger.hide();
		$("#submit").click(function(){
			if(email.val()==null || email.val()==""){
				alertDanger.show();
				alertDanger.html("对不起，您没有输入email邮箱");
				email.focus();
				return false;
			}
			
			var reg=/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/;
			if (!reg.test(email.val())) {
				alertDanger.show();
				alertDanger.html("对不起，您输入的不是邮箱地址");
				$("#username").focus();
				return false;
			}
			
			if(password.val() =="" || password.val() ==null){
				alertDanger.show();
				alertDanger.html("对不起，您没有输入密码");
				password.focus();
				return false;
			}
			
			if(password.val().length<7 || password.val().length>20){
				alertDanger.show();
				alertDanger.html("对不起，您输入密码必须在7到20位之间");
				password.focus();
				return false;
			}
			
			if(password.val() !=checkPassword.val()){
				alertDanger.show();
				alertDanger.html("对不起，您两次输入的密码不正确");
				checkPassword.focus();
				return false;
			}
		});
	});
</script>
<style type="text/css">
/*返回顶部 */
.go {
	z-index: 202;
	width: 47px;
	height: 106px;
	background-color: #Fff;
	position: fixed;
	_position: absolute;
	_top: expression(eval(document.documentElement.scrollTop +              
		              document.documentElement.clientHeight-this.offsetHeight-
		(  
		 
		   
		      
		             parseInt(this.currentStyle.marginTop, 10)||200)-(parseInt(this.currentStyle.marginBottom, 10)||0)));
	right: 8px;
	bottom: 6%;
	border-radius: 5px;
	box-shadow: 0 0 2px #6E6E6E
}

.go a {
	background: url(./images/front_img/toTopAndBottom.png) no-repeat;
	display: block;
	text-indent: 999em;
	width: 37px;
	margin: 5px;
	border: 0;
	overflow: hidden;
	float: left
}

.go .top {
	background-position: 0 -33px;
	height: 22px
}

.go .feedback {
	background-position: 0 -54px;
	height: 32px
}

.go .bottom {
	background-position: 0 -88px;
	height: 22px
}

.go .top:hover {
	background-position: -38px -33px
}

.go .feedback:hover {
	background-position: -38px -54px
}

.go .bottom:hover {
	background-position: -38px -88px
}

.panel-page {
	padding: 45px 50px 50px;
	min-height: 500px;
}

.panel-default {
	border-color: #ddd;
}

.panel {
	margin-bottom: 20px;
	background-color: #fff;
	border: 1px solid transparent;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
	width: 700px;
	height: 500px;
	margin-top: 20px;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

user agent stylesheetdiv {
	display: block;
}

Pseudo ::before element
:before,:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

Pseudo ::after element
:before,:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

Inherited from body
body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-color: #fff;
}

Inherited from html
html {
	font-size: 62.5%;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

html {
	font-family: sans-serif;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}
</style>
</head>
<body>
	<!---- -返回顶部和底部--开始- -->
	<div class="go">
		<a title="返回顶部" class="top" href="#gotop"></a> <a
			title="如果您有意见，请反馈给我们！" class="feedback" href="#" target="_blank"></a>
		<a title="返回底部" class="bottom" href="#gobottom"></a>
	</div>


	<!---- -返回顶部和底部--结束- -->
	<!-- 要显示的全部内容-->
	<div class="fream" id="fream">
		<!-- 头部 -->
		<div id="head">
			<a id="gotop" name="gotop" style="float: left; width: 20px;">&nbsp;</a>
			<div class="logo">
				<img alt="" src="./images/front_img/video_logo.png">
			</div>
		</div>
		<!-- 导航 -->
		<div id="nav">
			<div id="allNav" class="allNav">
				<span>所有分类</span>
			</div>
			<!-- 
			<div class="search">
				<form action="" method="post">
					<input type="text"
						style="width: 240px; height: 23px; float: left; border: none;" />
					<input type="submit" class="btn searchButt" value="搜索" />
				</form>
			</div> -->
		</div>
		<%--end nav --%>
		<%--浮动菜单列表 --%>
		<div id="navSpanList">
			<ul>
				<a href="#" title="大数据"><li>大数据</li></a>
				<a href="#" title="新技术"><li>新技术</li></a>
				<a href="#" title="java"><li>java</li></a>
				<a href="#" title="C"><li>C</li></a>
				<a href="#" title="C++"><li>C++</li></a>
				<a href="#" title="数据库"><li>数据库</li></a>
				<a href="#" title="架构"><li>架构</li></a>
			</ul>
		</div>
		<%--播放的位置与内容的标题 --%>
		<div class="palyTitleF">
			<div class="palyTitle">
				<span> 注册 </span>&nbsp;
			</div>
		</div>
		<%--展示视频的--%>
		<div id="playFream" class="playFreamList">
			<div class="palyBoxList">
				<div class="panel panel-default panel-page">
					<form id="login-form" class="form-vertical" method="post"
						action="/ITTao/register" novalidate="novalidate" data-widget-cid="widget-0">
						<div class="alert alert-danger" id="alertDanger">帐号或密码不正确</div>
						<div class="alert alert-danger" id="alertDanger1" style="display:none;"></div>

						<div class="form-group">
							<label class="control-label" for="login_username">帐号</label>
							<div class="controls">
								<input class="form-control" id="login_username" type="text"
									name="username" value="" 
									data-widget-cid="widget-1" pattern="^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$" title="邮箱正确格式：xxx@xxx.xxx" placeholder="请输入Email地址" data-explain="请输入Email地址 / 用户昵称" required>
								<div class="help-block">请输入Email地址 </div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="login_password">密码</label>
							<div class="controls">
								<input class="form-control" id="login_password" type="password"
									name="password"  placeholder="请输入密码" data-widget-cid="widget-2"
									data-explain="" required>
								<div class="help-block" style="display: none;"></div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="login_password">确认密码</label>
							<div class="controls">
								<input class="form-control" id="check_password" type="password"
									name="cpassword"  placeholder="请再次输入密码" data-widget-cid="widget-2"
									data-explain="" required>
								<div class="help-block" style="display: none;"></div>
							</div>
						</div>

						<div class="form-group">
							<div class="controls">
								</span>
								<input type="submit" class="btn btn-fat btn-primary btn-large" id="submit" value="注册">
							</div>
						</div>
					</form>

					<div class="ptl">
						<!-- <a href="#">找回密码</a> <span class="text-muted mhs">|</span> --> <span
							class="text-muted">还没有注册帐号？</span> <a href="#">立即注册</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部 -->
		<a name="gobottom">&nbsp;</a>
	
</body>
<script  type="text/javascript">
		  <% String str=request.getParameter("type");
		     if(str!=null&&str.equals("fail")){
		    	 %>
		    	 alertD=document.getElementById("alertDanger1");
		    	 alertD.innerHTML="账号已被注册过";
                 alertD.style.display="";
		    	 <%
		     }
		  %>
		</script>
</html>
	
