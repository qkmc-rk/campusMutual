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
		<script src="<%= request.getContextPath() %>/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/js/front/regist.js" type="text/javascript" charset="utf-8"></script>
		
		<div class="main">
			<h2>注册 - 大学生校园互助平台</h2>
			<form>
				<div class="lable">
					<input type="text" id="firstname" class="text" value="" placeholder="姓氏">
					<input type="text" id="lastname" class="text" value="" placeholder="名字">
				</div>
				<div class="clear"> </div>
				<div class="lable-2">
					<input type="text" id="stuid" class="text" value="" placeholder="学号(数字)"  >
					<input type="text" id="usermail" class="text" value="" placeholder="邮箱(便于找回密码,请认真填写)"  >
					<input type="text" id="account" class="text" value="" placeholder="账号"  >
					
					<input type="text" id="question1" class="text" value="" placeholder="密保问题1"  >
					<input type="text" id="answer1" class="text" value="" placeholder="密保问题1-答案"  >
					<input type="text" id="question2" class="text" value="" placeholder="密保问题2"  >
					<input type="text" id="answer2" class="text" value="" placeholder="密保问题2-答案"  >
					<input type="text" id="question3" class="text" value="" placeholder="密保问题3"  >
					<input type="text" id="answer3" class="text" value="" placeholder="密保问题3-答案"  >
					
					
					<input type="password" id="password" class="text" value="" placeholder="密码"  >
					<input type="password" id="password2" class="text" value="" placeholder="确认密码"  >
				</div>
				<div class="clear"> </div>
				<h3>通过注册, 表明您已同意我们的 <span><a href="#">协议手册</a> </span></h3>
				<div class="submit">
					<input type="button" onclick="ajax_regist()" value="创建新用户">
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