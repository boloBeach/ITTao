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
<link rel="stylesheet" type="text/css" href="css/base_css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/video_playPage.css">
<link rel="stylesheet" type="text/css" href="css/videoItme.css">

<script language="javascript" type="text/javascript"
	src="js/video_playPage.js"></script>
<!-- 播放区域的引入 -->

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
		              
		   document.documentElement.clientHeight-this.offsetHeight- (      
		 
		   
		      
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
			<%--登录 注册 留言 --%>
			<div class="headRight">
				<%--未登录之前是下面内容，登录后“登录”二字变为“欢迎XXX登录”，并且“注册”二字变为“个人主页” --%>
				<span><a href="UserInfo">登录</a>&nbsp;|&nbsp;<a href="">注册</a>&nbsp;





				
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
				<span> 视频的类型 </span>&nbsp;》&nbsp;视频名字
			</div>
		</div>
		<%--展示视频的--%>
		<div id="playFream" class="playFreamList">
			<div class="palyBoxList">
				<div class="video-title">
					<div class="video-title-img">
						<img alt="视频教程的名字" src="photo.png">
					</div>
					<div class="video-title-discri">
						<div class="video-title-discri-title">hadoop第一版</div>

						<div class="video-title-discri-discri">hadoop第一版的描述</div>

						<div class="video-title-price">
							价格:<span>20.00元</span>
						</div>

						<div class="video-title-price">
							学员数:<span>20</span>
						</div>
						<div class="video-title-price">
							<button class="btn btn-success"
								style="width: 100px; height: 30px; font-size: 18px;">购买课程</button>
						</div>
					</div>
				</div>
				<div class="video-discri">
					<div class="video-discri-instro">
						<button class="btn btn-info">课程介绍</button>
					</div>
					<div class="video-discri-info">
						1.hadoop简介<br> 2.hive<br> 3.pig
					</div>
				</div>
				<div class="video-item">
					<div class="video-item-title">&nbsp;&nbsp;&nbsp;课程列表</div>
					<div class="video-item-content">
						<ul>
							<li><a href="video_playPage.jsp" target="_blank" title="第一讲" class="video-item-content-a" title="第一讲">
									<span class="video-itme-content-fiee"></span><span
									class="item-icon"></span><span class="item-length">
										12:51 </span>
							</a>
								<div class="item-body">
									<div class="item-seq-name">课时1:</div>
									<div class="item-title">
										<a href="video_playPage.jsp" title="如何申请微信公众平台账号" target="_blank">如何申请微信公众平台账号</a>
									</div>
								</div></li>
								
								<li><a href="video_playPage.jsp" target="_blank" title="第一讲" class="video-item-content-a" title="第一讲">
									<span class="video-itme-content-fiee"></span><span
									class="item-icon"></span><span class="item-length">
										12:51 </span>
							</a>
								<div class="item-body">
									<div class="item-seq-name">课时2:</div>
									<div class="item-title">
										<a href="video_playPage.jsp" title="如何申请微信公众平台账号" target="_blank">如何申请微信公众平台账号</a>
									</div>
								</div></li>
								
								
								<li><a href="video_playPage.jsp" target="_blank" title="第一讲" class="video-item-content-a" title="第一讲">
									<span class="video-itme-content-fiee"></span><span
									class="item-icon"></span><span class="item-length">
										12:51 </span>
							</a>
								<div class="item-body">
									<div class="item-seq-name">课时3:</div>
									<div class="item-title">
										<a href="video_playPage.jsp" title="如何申请微信公众平台账号" target="_blank">如何申请微信公众平台账号</a>
									</div>
								</div></li>
								
								<li><a href="video_playPage.jsp" target="_blank" title="第一讲" class="video-item-content-a" title="第一讲">
									<span class="video-itme-content-fiee"></span><span
									class="item-icon"></span><span class="item-length">
										12:51 </span>
							</a>
								<div class="item-body">
									<div class="item-seq-name">课时4:</div>
									<div class="item-title">
										<a href="video_playPage.jsp" title="如何申请微信公众平台账号" target="_blank">如何申请微信公众平台账号</a>
									</div>
								</div></li>
								
								<li><a href="video_playPage.jsp" target="_blank" title="第一讲" class="video-item-content-a" title="第一讲">
									<span class="video-itme-content-unfiee"></span><span
									class="item-icon"></span><span class="item-length">
										12:51 </span>
							</a>
								<div class="item-body">
									<div class="item-seq-name">课时5:</div>
									<div class="item-title">
										<a href="video_playPage.jsp" title="如何申请微信公众平台账号" target="_blank">如何申请微信公众平台账号</a>
									</div>
								</div></li>
								
								
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end playFream  视屏播放完毕--%> -->
	<%--end fream --%>
	<!-- 底部 -->
	<a name="gobottom">&nbsp;</a>
</body>
</html>
