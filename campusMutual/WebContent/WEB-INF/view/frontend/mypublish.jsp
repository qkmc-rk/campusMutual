<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/public.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/bootstrap.css"/>
		<script src="<%=request.getContextPath()%>/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath()%>/static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath()%>/static/js/wangEditor.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath()%>/static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>	
	</head>

	<body>
		<div class="layui-fluid">
			
			<!--导航栏-->
			<ul class="layui-nav" layui-filter="">
				<li class="layui-nav-item logo">
					<h2><a href="index">我的发布 - 大学生校园互助平台</a></h2>
				</li>
				<!--页面链接-->
				<li class="layui-nav-item"><a href="publish">发布信息</a></li>
				<li class="layui-nav-item"><a href="mypublish">我的发布</a></li>
				<li class="layui-nav-item"><a href="mywork">我的任务</a></li>
				<li class="layui-nav-item"><a href="works">最新发布</a></li>
				<!--//页面链接-->
				<li class="layui-nav-item">
					<a href="center">个人中心<span class="layui-badge-dot"></span></a>
				</li>
				<li class="layui-nav-item">
					<a href="center"><img src="<%=request.getContextPath()%>/static/img/login/avtar.png" class="layui-nav-img" />mrruan</a>
				</li>
			</ul>
			<!--//导航栏-->
			<!--主要内容-->
			<div class="layui-row">
				<!--标题-->
				<div class="site-title">
					<fieldset>
						<legend>
							<a name="use" style="text-decoration: none; color: gainsboro;">我发布的任务</a>
						</legend>
					</fieldset>
				</div>
				<div class="site-text site-block mypublish-block">
					<!--基础信息内容-->
					
					<div class="layui-elem-quote mypublish1">
						<p><i style="color: red;">谁帮我取一下快递</i> | 2018-3-14 | 3天 | 赏金<b>28</b>元</p>
						<p>[
							<a href="">删除</a>] | [
							<a href="">更改赏金</a>] | [
							<a href="">更改时间</a>] | [
							<a href="">查看</a>]</p>
					</div>
					<div class="layui-elem-quote mypublish1">
						<p><i style="color: red;">谁帮我取一下快递</i> | 2018-3-14 | 3天 | 赏金<b>28</b>元</p>
						<p>[
							<a href="">删除</a>] | [
							<a href="">更改赏金</a>] | [
							<a href="">更改时间</a>] | [
							<a href="">查看</a>]</p>
					</div>
					<div class="layui-elem-quote mypublish1">
						<p><i style="color: red;">谁帮我取一下快递</i> | 2018-3-14 | 3天 | 赏金<b>28</b>元</p>
						<p>[
							<a href="">删除</a>] | [
							<a href="">更改赏金</a>] | [
							<a href="">更改时间</a>] | [
							<a href="">查看</a>]</p>
					</div>
					<div class="layui-elem-quote mypublish1">
						<p><i style="color: red;">谁帮我取一下快递</i> | 2018-3-14 | 3天 | 赏金<b>28</b>元</p>
						<p>[
							<a href="">删除</a>] | [
							<a href="">更改赏金</a>] | [
							<a href="">更改时间</a>] | [
							<a href="">查看</a>]</p>
					</div>
					<div class="layui-elem-quote mypublish1">
						<p><i style="color: red;">谁帮我取一下快递</i> | 2018-3-14 | 3天 | 赏金<b>28</b>元</p>
						<p>[
							<a href="">删除</a>] | [
							<a href="">更改赏金</a>] | [
							<a href="">更改时间</a>] | [
							<a href="">查看</a>]</p>
					</div>
					<!--分页 未实现-->
					<!-- <nav aria-label="Page navigation">
					  <ul class="pagination">
					    <li>
					      <a href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li>
					      <a href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav> -->
					<!--//分页-->
				</div>
			</div>
		</div>
	</body>

</html>