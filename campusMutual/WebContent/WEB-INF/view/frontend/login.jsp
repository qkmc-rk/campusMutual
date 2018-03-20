<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>登录 - 大学生校园互助平台</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="UTF-8" />
		<link href="<%= request.getContextPath() %>/static/css/login/style.css" rel='stylesheet' type='text/css' />
	</head>

	<body>
		<script src="<%= request.getContextPath() %>/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/js/front/login.js" type="text/javascript" charset="utf-8"></script>
		<!--SIGN UP-->
		<h1>大学生校园互助平台  - 登录</h1>
		<div class="login-form">
			<div class="close"> </div>
			<div class="head-info">
				<label class="lbl-1"> </label>
				<label class="lbl-2"> </label>
				<label class="lbl-3"> </label>
			</div>
			<div class="clear"> </div>
			<div class="avtar">
				<img src="<%= request.getContextPath() %>/static/img/login/avtar.png" />
			</div>
			<form>
				<input type="text" id="account" class="text" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}">
				<div class="key">
					<input type="password" id="password" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
				</div>
			</form>
			<div class="signin">
				<input type="submit" onclick="ajaxLogin()" value="登录">
			</div>
			<div class="signin">
				<a href="<%= request.getContextPath() %>/forgetpage" style="color: white;">找回密码</a> | <a href="<%= request.getContextPath() %>/regpage" style="color: white;">注册账号</a>
			</div>
		</div>
		<div class="copy-rights">
			<p>Powered by Mrruan.contact at
				<a href="mailto:qkmc@outlook.com">qkmc@outlook.com</a>
			</p>
		</div>

	</body>

</html>