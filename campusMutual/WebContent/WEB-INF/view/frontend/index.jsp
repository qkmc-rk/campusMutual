<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/css/public.css"/>
		<script src="<%= request.getContextPath() %>/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div class="layui-fluid">
			<!--导航栏-->
			<ul class="layui-nav" layui-filter="">
				<!--页面链接-->
				<li class="layui-nav-item"><a href="publish">发布信息</a></li>
				<li class="layui-nav-item"><a href="mypublish">我的发布</a></li>
				<li class="layui-nav-item"><a href="mywork">已接任务</a></li>
				<li class="layui-nav-item"><a href="works">最新发布</a></li>
				<!--//页面链接-->
				<li class="layui-nav-item logo">
					<h2>大学生校园互助平台</h2>
				</li>
				<li class="layui-nav-item">
					<a href="center">个人中心<span class="layui-badge-dot"></span></a>
				</li>
				<li class="layui-nav-item">
					<a href="center"><img src="<%= request.getContextPath() %>/static/img/login/avtar.png" class="layui-nav-img"/>${userPrimInfo.neckname}</a>
				</li>
			</ul>
			<!--//导航栏-->
			<!--主要内容-->
			<div class="layui-row">
				<ul class="click-block">
					<a href="publish"><li class="click-block-item click-block-item1">发布信息</li></a>
					<a href="mypublish"><li class="click-block-item click-block-item2">我的发布</li></a>
					<a href="mywork"><li class="click-block-item click-block-item3">已接任务</li></a>
					<a href="works"><li class="click-block-item click-block-item4">最新发布</li></a>
				</ul>
			</div>
		</div>		
	</body>
</html>
