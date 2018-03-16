<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<link href="<%= request.getContextPath() %>/static/css/regist/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">

	</head>

	<body>
		<div class="main">
			<h2>注册 - 大学生校园互助平台</h2>
			<form>
				<div class="lable">
					<input type="text" name="firstname" class="text" value="" placeholder="姓氏">
					<input type="text" name="secondname" class="text" value="" placeholder="名字">
				</div>
				<div class="clear"> </div>
				<div class="lable-2">
					<input type="text" name="stuid" class="text" value="" placeholder="学号"  >
					<input type="text" name="account" class="text" value="" placeholder="账号"  >
					<input type="password" name="password" class="text" value="" placeholder="密码"  >
					<input type="password" name="password2" class="text" value="" placeholder="确认密码"  >
				</div>
				<div class="clear"> </div>
				<h3>通过注册, 表明您已同意我们的 <span><a href="#">协议手册</a> <span></h3>
				<div class="submit">
					<input type="submit" onclick="myFunction()" value="创建新用户">
				</div>
				<div class="clear"> </div>
			</form>
			<!-----//end-main---->
		</div>
		<!-----start-copyright---->
		<div class="copy-right">
			<p>Powered By Mrruan
				<a href="mailto:qkmc@outlook.com" title="联系">qkmc@outlook.com</a>
			</p>
		</div>
		<!-----//end-copyright---->


		
	</body>

</html>