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
			<h2>找回密码 - 大学生校园互助平台</h2>
			<form>
				<div class="clear"> </div>
				<div class="lable-2">
					<input type="text" class="text" value="" placeholder="学号"  >
					<input type="password" class="text" value="" placeholder="Q1:你爸爸多少岁了?"  >
					<input type="password" class="text" value="" placeholder="Q2:你妈妈的生日?"  >
					<input type="password" class="text" value="" placeholder="Q3:你姐姐的生日?"  >
				</div>
				<div class="clear"> </div>
				<h3>找回密码说明,请参照 <span><a href="#">找回密码说明</a> <span></h3>
				<div class="submit">
					<input type="button" onclick="myFunction()" value="重置密码">
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

</html></html>