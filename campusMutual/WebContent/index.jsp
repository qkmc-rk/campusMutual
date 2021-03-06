<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>大学生校园互助平台</title>
		<link href="<%= request.getContextPath() %>/static/index/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<script src="<%= request.getContextPath() %>/static/index/js/jquery-1.11.1.min.js"></script>
		<link href="<%= request.getContextPath() %>/static/index/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="UTF-8"/>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link rel="stylesheet" href="<%= request.getContextPath() %>/static/index/fonts/css/font-awesome.min.css">
	</head>
	<body>
	<div class="header wow fadeInUpBig" data-wow-delay="0.4s">
	   <div class="container">
		  <div class="header_top">
			<h1>欢迎来到</h1>
			<h2>大学生校园互助平台</h2>
		  </div>
	   </div>
	 </div>
	  <div class="header-home">
		<div class="fixed-header">
			<div class="logo wow bounceInDown" data-wow-delay="0.4s">
				<a href="logpage">
		          <span class="secondary">campus</span>
		          <span class="main">MUTUAL</span>
		        </a>
			</div>
					<div class="top-nav wow bounce" data-wow-delay="0.4s">
					    <span class="menu"> </span>
						<ul>
							<li class="active"><a href="index.html">主页</a></li>
						  	<li><a href="logpage">开始使用</a></li>		
						</ul>
					<!-- script-nav -->
				<script>
				$("span.menu").click(function(){
					$(".top-nav ul").slideToggle(500, function(){
					});
				});
				</script>
				<!-- //script-nav -->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
	        <!--script-->
			<script>
				$(document).ready(function(){
					$(".top-nav li a").click(function(){
						$(this).parent().addClass("active");
						$(this).parent().siblings().removeClass("active");
					});
				});
			</script>
				<!-- script-for sticky-nav -->
			<script>
			$(document).ready(function() {
				 var navoffeset=$(".header-home").offset().top;
				 $(window).scroll(function(){
					var scrollpos=$(window).scrollTop(); 
					if(scrollpos >=navoffeset){
						$(".header-home").addClass("fixed");
					}else{
						$(".header-home").removeClass("fixed");
					}
				 });
				 
			});
			</script>
			<!-- /script-for sticky-nav -->
		<!--//header-->
	   </div>
		<div class="grid_2" style="margin-top: 50px;">
			<div class="container"> 
				<h3 class="head_1 wow rotateInUpLeft" data-wow-delay="0.4s">特色</h3>
			  <div class="col-md-4 box_6 wow rotateInDownLeft " data-wow-delay="0.4s">
			  	<img src="<%= request.getContextPath() %>/static/index/images/pic1.jpg" class="img-responsive" alt=""/>
			  	<div class="desc">
			  		<h4>发布任务</h4>
			  		<p>大学生通过注册账号并进行实名认证,然后发布求助信息,同学间能够互相帮助.</p>
			  	</div>
			  </div>
			   <div class="col-md-4 box_6 wow lightSpeedIn" data-wow-delay="0.4s">
			  	<img src="<%= request.getContextPath() %>/static/index/images/pic2.jpg" class="img-responsive" alt=""/>
			  	<div class="desc">
			  		<h4>接受任务</h4>
			  		<p>某个同学发布的任务可被其他同学接收,接收后可查看联系方式并进行沟通.</p>
			  	</div>
			  </div>
			  <div class="col-md-4 box_6 wow rotateIn " data-wow-delay="0.4s">
			  	<img src="<%= request.getContextPath() %>/static/index/images/pic3.jpg" class="img-responsive" alt=""/>
			  	<div class="desc">
			  		<h4>个人管理</h4>
			  		<p>平台不会泄露用户任何信息,并严格对用户信息进行保密,以免信息泄露</p>
			  	</div>
			  </div>
		   </div>
		</div>
	    
		<div class="footer wow fadeInRight" data-wow-delay="0.4s">
			<div class="container">
			  <div class="footer_top">
				
				<div class="col-sm-3">
				  <ul class="list1">
				    <h3>了解更多</h3>
				   	 <li><a href="">技术实现</a></li>
				   	 <li><a href="">逻辑管理</a></li>
				   	 <li><a href="">网站背景</a></li>
				   	 <li><a href="<%= request.getContextPath() %>/admin/loginpage">后台管理</a></li>
				  </ul>
				</div>
				<div class="col-sm-3">
				  <ul class="list1">
				  	<h3>友情链接</h3>
				   	 <li><a href="http://www.redkale.org/">redkale</a></li>
				   	 <li><a href="http://www.sicau.edu.cn/">四川农业大学</a></li>
				   	 <li><a href="https://spring.io/">Spring</a></li>
				   	 <li><a href="http://www.layui.com/">layui</a></li>
				  </ul>
				</div>
				<div class="col-sm-3">
				  <ul class="socials">
	                 <li><a href=""><i class="fa fb fa-mail-forward"></i></a></li>
	                 <li><a href=""><i class="fa tw fa-phone"></i></a></li>
	              </ul>
	              <ul class="list2">
					<li><strong class="phone">+18783551223</strong><br><small>星期一 至 星期五</small></li>
					<li>有问题? <a href="malito:qkmc@outlook.com">发送邮件</a></li>
				  </ul>
				</div>
				<div class="clearfix"> </div>
			   </div>
			 </div>
		</div>
		<div class="copy">
		  <p>(c) Copyright 2018 Mrruan. All Rights Reserved.  <a href="malito:qkmc@outlook.com">Contact me</a></p>
	    </div>
	
	</body>
</html>		