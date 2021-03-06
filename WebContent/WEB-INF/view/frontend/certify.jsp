<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>实名认证 - 大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="css/public.css"/>
		<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			.content{
				width: 450px;
				height: 700px;
				margin: auto;
				margin-top: 100px;
			}
		</style>
	</head>
	<body>
		<div class="layui-fluid">
			<!--导航栏-->
			<ul class="layui-nav" layui-filter="">
				<!--页面链接-->
				<li class="layui-nav-item"><a href="publish">发布信息</a></li>
				<li class="layui-nav-item"><a href="mypublish">我的发布</a></li>
				<li class="layui-nav-item"><a href="mywork">我的任务</a></li>
				<li class="layui-nav-item"><a href="works">最新发布</a></li>
				<!--//页面链接-->
				<li class="layui-nav-item logo">
					<h2>大学生校园互助平台</h2>
				</li>
				<li class="layui-nav-item">
					<a href="center">个人中心<span class="layui-badge-dot"></span></a>
				</li>
				<li class="layui-nav-item">
					<a href="center"><img src="img/login/avtar.png" class="layui-nav-img"/>mrruan</a>
				</li>
			</ul>
			<!--//导航栏-->
			<!--主要内容-->
			<div class="content">
				<ul class="layui-timeline">
				  <li class="layui-timeline-item">
				    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
				    <div class="layui-timeline-content layui-text">
				      <h3 class="layui-timeline-title">
				      	<button type="button" class="layui-btn" id="test1">
						  <i class="layui-icon">&#xe67c;</i>上传学生证图片
						</button>
				      </h3>
				       <p>
				       	<br /><br /><br /><br /><br /><br />
				       </p>
				    </div>
				  </li>
				  <li class="layui-timeline-item">
				    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
				    <div class="layui-timeline-content layui-text">
				      <h3 class="layui-timeline-title">
				      	学生证图片示例
				      </h3>
				      <p>
				      	请上传清晰的学生证照片<br />
				      	1.保证学号,姓名清晰可见.<br />
				      	2.保证照片清晰可见<br />
				      	3.PS照片或者上传虚假照片将无法通过审核.
				      	<br />
				      	<img src="img/login/bg1.jpg" style="height: 200px; width: 300px;"/>
				      </p>
				    </div>
				  </li>
				</ul>
			</div>
			<script>
				layui.use('upload', function(){
				  var upload = layui.upload;
				   
				  //执行实例
				  var uploadInst = upload.render({
				    elem: '#test1' //绑定元素
				    ,url: '/certify/usercertify' //上传接口
				    ,done: function(res){
				      alert(res.result);
				    }
				    ,error: function(){
				      //请求异常回调
				    }
				  });
				});
		</script>
	</body>
</html>
