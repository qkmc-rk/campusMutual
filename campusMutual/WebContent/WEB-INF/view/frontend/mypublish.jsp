<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/layui/css/layui.css" />
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
					<h2>我的 - 大学生校园互助平台</h2>
				</li>
				<!--页面链接-->
				<li class="layui-nav-item"><a href="publish">发布信息</a></li>
				<li class="layui-nav-item"><a href="mypublish">我的发布</a></li>
				<li class="layui-nav-item"><a href="mywork">我的任务</a></li>
				<li class="layui-nav-item"><a href="works">最新发布</a></li>
				<!--//页面链接-->
				<li class="layui-nav-item"><a href="center">个人中心<span
						class="layui-badge-dot"></span></a></li>
				<li class="layui-nav-item"><a href="center"><img
						src="<%=request.getContextPath()%>/static/img/login/avtar.png"
						class="layui-nav-img" />${userPrimInfo.neckname }</a></li>
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
					<c:forEach items="${helpInfoList }" var="helpInfo" varStatus="status">
						<div class="layui-elem-quote mypublish1">
							<p>
								<i style="color: red;">${helpInfo.title }</i> 
								| 创建时间:<b style="color:#555555">
								<fmt:formatDate value="${helpInfo.crettime }" pattern="yyyy-MM-dd"/></b>
								| 截止时间:<b style="color:#555555"><jsp:setProperty name="dateValue" property="time" value="${helpInfo.timeout }"/>
								<fmt:formatDate value="${dateValue }" pattern="yyyy-MM-dd"/></b> | 赏金<b>${helpInfo.reward }</b>元
								<!--任务状态:  -->
								<c:if test="${helpStateList[status.index].received > 0}">
									<c:if test="${helpStateList[status.index].achieved > 0}">
										| <big style="color:green"> 已完成</big>
									</c:if>
									<c:if test="${helpStateList[status.index].achieved < 1}">
										| <big style="color:red"> 已被接受</big>
									</c:if>
									
								</c:if>
								<c:if test="${helpStateList[status.index].received < 1 && helpStateList[status.index].achieved < 1}">
									| <big style="color:gray"> 等待接受</big>
								</c:if>
							</p>
							<p>
							<!--已完成!  -->
							<c:if test="${helpStateList[status.index].achieved > 0}">
								[<a href="my_detail?infoid=${helpInfo.id }">查看</a>]
							</c:if>
							<!--未完成  -->
							<c:if test="${helpStateList[status.index].achieved < 1}">
								<!--已被接受  -->
								<c:if test="${helpStateList[status.index].received == 1}">
									[<a href="my_detail?infoid=${helpInfo.id }">查看</a>]
								</c:if>
								<!--未被接收  -->
								<c:if test="${helpStateList[status.index].received == 0}">
									[
									<a href="">删除</a>] | [
									<a href="">更改赏金</a>] | [
									<a href="">更改时间</a>] | [
									<a href="my_detail?infoid=${helpInfo.id }">查看</a>]
								</c:if>
							</c:if>
							</p>
						</div>
					</c:forEach>
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