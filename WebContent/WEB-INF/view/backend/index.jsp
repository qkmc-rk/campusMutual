<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>后台管理 - 大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/back/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/back/css/public.css"/>
		<script src="<%= request.getContextPath() %>/static/back/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/back/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/back/js/public.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div class="layui-header">
			<div class="top-bar">
				<h1 style="position: absolute; margin-left: 10px; margin-top: 12px; color: white;"><a href="index" style="color: #FFB800;">大学生校园互助平台</a></h1>
				<ul class="layui-nav" style="margin-right: 30px;">
				  <li class="layui-nav-item layui-layout-right">
				   <img src="http://t.cn/RCzsdCq" class="layui-nav-img"><span>管理员</span>
				    <dl class="layui-nav-child">
				      <dd><a href="javascript:;"></a></dd>
				      <dd><a href="javascript:;"></a></dd>
				      <dd><a href="javascript:loginoff();">退出登录</a></dd>
				    </dl>
				  </li>
				</ul>
			</div>
			<!--侧边导航栏-->
			<div class="side-bar">
				<ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="test">
				  <li class="layui-nav-item">
				    <a href="javascript:;">信息管理</a>
				    <dl class="layui-nav-child">
				      <dd><a href="helpinfo">求助信息</a></dd>
				    </dl>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;">实名管理</a>
				    <dl class="layui-nav-child">
				      <dd><a href="certify">实名管理</a></dd>
				    </dl>
				  </li>
				</ul>
				<p>powered by Mrruan - <a href="mailto:qkmc@outlook.com">Contact</a></p>
			</div>
		
		</div>
		<!--main content-->
		<div class="layui-body" style="background-color: #EEEEEE;">
			<h1 style="margin: 306px 0 0 360px; font-size: 36px;">
				欢迎来到大学生校园互助平台后台管理系统
			</h1>
		</div>
		<script type="text/javascript">
			layui.use('element', function(){
			  var element = layui.element;
			});
		</script>
	</body>
</html>
