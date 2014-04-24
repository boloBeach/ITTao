<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"  %>
<%@ page language="java" import="cn.dao.*"  %>
<%@ page language="java" import="cn.model.*"  %>

<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="视频教程,hadoop,大数据">
<meta http-equiv="description" content="ITTao首页">
<script type="text/javascript" src="js/base_Js/jquery-1.9.1.js"
	charset="utf-8"></script>
<script type="text/javascript" src="js/base_Js/jquery.lazyload.js"
	charset="utf-8"></script>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="css/video_index.css">
<style type="text/css">
/*焦点图样式  */
* {
	margin: 0;
	padding: 0;
}

img {
	border: 0;
}

.focusFream {
	background: -webkit-gradient(linear, 20% 20%, 100% 100%, from(#27C6A2),
		to(#019C7A));
	width: 100%;
	height: 300px;
	margin: 0 auto;
	float: left;
	margin-bottom: 30px;
}

#focus {
	margin-left: 25%;
	width: 930px;
	height: 300px;
	overflow: hidden;
	position: relative;
}

#focus ul {
	height: 300px;
	position: absolute;
}

#focus ul li {
	float: left;
	width: 930px;
	height: 300px;
	overflow: hidden;
	position: relative;
	background: #000;
}

#focus ul li img {
	width: 930px;
	height: 300px;
}

#focus ul li div {
	position: absolute;
	overflow: hidden;
}

#focusFream .btnBg {
	position: absolute;
	width: 100%;
	height: 30px;
	left: 0;
	background: #000;
}

#focusFream .btn {
	position: absolute;
	width: 880px;
	height: 20px;
	padding: 5px 10px;
	right: 35%;
	text-align: right;
}

#focusFream .btn span {
	display: inline-block;
	_display: inline;
	_zoom: 1;
	width: 35px;
	height: 20px;
	_font-size: 0;
	margin-left: 5px;
	cursor: pointer;
	background: #fff;
}

#focusFream .btn span.on {
	background: #fff;
}

#focus .preNext {
	width: 45px;
	height: 100px;
	position: absolute;
	top: 90px;
	background: url(images/front_img/sprite.png) no-repeat 0 0;
	cursor: pointer;
}

#focus .pre {
	left: 15%;
}

#focus .next {
	right: 15%;
	background-position: right top;
}
</style>

<script language="javascript" type="text/javascript"
	src="js/video_index.js"></script>
<!-- 滚动图的引入 -->
<script type="text/javascript" src="js/video_indexFocus.js"></script>
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
	background: url(images/front_img/toTopAndBottom.png) no-repeat;
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

.price {
	display : inline-block;
	float: right;
	color: red;
	margin-right: 8px;
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
				<img alt="" src="images/front_img/video_logo.png">
			</div>
			<%--登录 注册 留言 --%>
			<div class="headRight">
				<%--未登录之前是下面内容，登录后“登录”二字变为“欢迎XXX登录”，并且“注册”二字变为“个人主页” --%>
				<span><a href="login.jsp" target="_blank">登录</a>&nbsp;|&nbsp;<a href="regist.jsp" target="_blank">注册</a>&nbsp;
				
			</div>
		</div>
		<!-- 导航 -->
		<div id="nav">
			<div id="allNav" class="allNav">
				<span>所有分类</span>
			</div>
		</div>
		<%--end nav --%>
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
		<%-- 焦点图 --%>
		<div id="focusFream" class="focusFream">
			<div id="focus">

				<ul>
					<li><a href="#" target="_blank"><img
							src="images/front_img/video_focusImg/01.jpg" /></a></li>
					<li><a href="#" target="_blank"><img
							src="images/front_img/video_focusImg/02.jpg" /></a></li>
					<li><a href="#" target="_blank"><img
							src="images/front_img/video_focusImg/03.jpg" /></a></li>
					<li><a href="#" target="_blank"><img
							src="images/front_img/video_focusImg/04.jpg" /></a></li>
					<li><a href="#" target="_blank"><img
							src="images/front_img/video_focusImg/05.jpg" /></a></li>
				</ul>
			</div>
		</div>
		<!-- end focusFream -->
		<%-- 所有展示内容 --%>
		<div id="allContentFream">
			<%-- =============================最新动态开始===================================== --%>
			<div class="latestInfo">
				<div class="latestInfoTop">
					<img alt="" src="images/front_img/video_latestTitleLine.png">
					<span class="latestSL">最新动态</span><span class="latestSR"><a
						href="more_video.jsp" target="_blank">更多》 </a></span>
				</div>
				<!-- end latestInfoTop -->
				<!-- 列表内容 -->
				<div class="latestInfoListF">
					<!--左边  -->
					<div class="latestInfoListLeftF">
					<% List<HashMap<String,Object>> listit=new VideoDao().QueryVideo("0",0,4); %>
					<% for(HashMap<String,Object> hashMap:listit){%>
						<div class="latestlistLeft">
							<span>◆&nbsp; <a href="videoItem.jsp?id=<%out.print(hashMap.get("id")); %>" target="_blank">
									<%out.print(hashMap.get("vidoname")); %> </a>
							</span> <span class="price"><%out.print(hashMap.get("money")); %>元</span>
						</div>
						<%} %>
						
					</div>
					<!-- end latestInfoListLeftF -->
					<div class="verticalLine">&nbsp;</div>
					<div class="latestInfoListLeftF">
					<% List<HashMap<String,Object>> listit2=new VideoDao().QueryVideo("0",4,4); %>
					<% for(HashMap<String,Object> hashMap:listit2){%>
					
						<div class="latestlistLeft">
							<span>◆&nbsp;<a href="videoItem.jsp?id=<%out.print(hashMap.get("id")); %>" target="_blank">
									<%out.print(hashMap.get("vidoname")); %></a></span>
									<span class="price"><%out.print(hashMap.get("money")); %>元</span>
						</div>
							<%} %>
					</div>
					<!-- end latestInfoListLeftF -->
				</div>
				<!--end latestInfoListF -->
			</div>
			<!-- end latestInfo最新动态结束 -->
			<%-- ===================== entertainmentFream===================--%>
			<div id="entertainmentFream">
				<div class="entertainmentInfoTop">
					<img alt="" src="images/front_img/video_entertainmentTitleLine.png">
					<span class="entertainmentSL">视频</span><span
						class="entertainmentSR"><a href="more_video.jsp"
						target="_blank">更多》 </a></span>
				</div>
				<!-- end entertainmentInfoTop -->
				<%--娱乐 列表 --%>
				<div class="entertainmentContentF">
				
				<% List<HashMap<String,Object>> list=new VideoDao().QueryVideo("0",0,12); %>
					<% 
					int i=1;
					for(HashMap<String,Object> hashMap:list){%>
					<div class="everyPartF">
						<div class="everyPartImg">
							<a href="videoItem.jsp?id=<% out.print(hashMap.get("id")); %>" target="_blank" title="<%out.print(hashMap.get("vidoname")); %>"><img
								src="<% out.print(hashMap.get("image")); %>" /></a>
						</div>
						<div class="everyPartFont">
							<a href="videoItem.jsp?id=<% out.print(hashMap.get("id")); %>" target="_blank" title="<%out.print(hashMap.get("vidoname")); %>"> <%out.print(hashMap.get("vidoname")); %> </a>
						</div>
						
						<div class="everyPartFontPrice">
							<span class="everyPartFontPrice-price"><% out.print(hashMap.get("money")); %>元</span>   
							<span class="student"><% out.print(hashMap.get("clickcount")); %>个学员</span>
						</div>
					</div>
					<%} %>
					<a href="more_video.jsp" target="_blank" title="查看更多"><button type="button" style="margin-top: 20px;width: 100%;text-align: center;height: 40px;font-size: 16px;" class="btn btn-default btn-lg btn-block">查看更多</button></a>
				</div>
			</div>
			<!-- 娱乐节目结束end entertainmentFream -->

			<%-- =========================排行榜 rankinList============================--%>

               
			<div class="rankinListFram">
				<div class="rankinListInfoTop">
					<img alt="" src="images/front_img/video_classTitleLine.png">
					<span class="rankinListSL">排行榜</span><span class="rankinListSR"><a
						href="more_video.jsp" target="_blank">更多》 </a></span>
				</div>
				<%-- end rankinListInfoTop --%>

				<div class="rankinListListF">
					<%--列表循环  14条记录--%>
					<div class="rankinListList">
						<span class="rankinListListSL">12</span> <span
							class="rankinListListSR"> <a href="videoItem.jsp" target="_blank" title="视频的标题">
								视频的标题 </a></span>
								<span class="price">20.00元</span>
					</div>

				</div>
				<%--列表外部框结束 end rankinListListF --%>
			</div>
			<%--end rankinListFram --%>
		</div>
		<%-- end allContentFream --%>
	</div>
	<!-- 懒加载设置 -->
	<script type="text/javascript">
		$(function() {
			$("img").lazyload({
				container : $("#entertainmentFream"),
				effect : "fadeIn"
			});
		});
	</script>
	<!-- 底部 -->
	<a name="gobottom">&nbsp;</a>
</body>
</html>
