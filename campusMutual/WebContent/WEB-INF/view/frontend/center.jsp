<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/css/public.css"/>
		<script src="<%= request.getContextPath() %>/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/js/front/center.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div class="layui-fluid">
			<!--导航栏-->
			<ul class="layui-nav" layui-filter="">
				<li class="layui-nav-item logo">
					<h2>个人中心</h2>
				</li>
				<!--页面链接-->
				<li class="layui-nav-item"><a href="index">主页</a></li>
				<li class="layui-nav-item"><a href="loginoff">退出登录</a></li>
				<!--//页面链接-->
				<li class="layui-nav-item">
					<a href="javascript:;"><img src="<%= request.getContextPath() %>/static/img/login/avtar.png" class="layui-nav-img"/>${userPrimInfo.neckname }</a>
				</li>
			</ul>
			<!--//导航栏-->
			<!--主要内容-->
			<div class="layui-row">
				<!--标题-->
				<div class="site-title">
			      <fieldset><legend><a name="use">基础信息</a></legend></fieldset>
			    </div>
			    <div class="site-text site-block">
			    	<!--基础信息内容-->
			    	<form class="layui-form" action="" method="post">
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">昵称</label>
							<div class="layui-input-block">
								<input type="text" name="neckname" required  lay-verify="required" value="${userPrimInfo.neckname }" placeholder="请输入新的昵称" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">邮件</label>
							<div class="layui-input-block">
								<input type="text" name="usermail"  required  lay-verify="required" value="${userPrimInfo.usermail }" placeholder="请输入新的邮件" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">电话</label>
							<div class="layui-input-block">
								<input type="text" name="userphone" required  lay-verify="required" value="${userPrimInfo.userphone }" placeholder="请输入新的电话" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
						<div class="layui-form-item layui-inline">
						    <label class="layui-form-label">性别</label>
						    <div class="layui-input-block">
						      <select name="sex" lay-verify="required">
						        	<c:if test="${userPrimInfo.sex == 'M'}">
						        		<option value="M" selected="selected">男</option>
						       			<option value="F">女</option>
						        	</c:if>
						        	<c:if test="${userPrimInfo.sex == 'F'}">
						        		<option value="M">男</option>
						        		<option value="F" selected="selected">女</option>
						        	</c:if>
						      </select>
						    </div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">年龄</label>
							<div class="layui-input-block">
								<input type="" name="age" required  lay-verify="required" value="${userPrimInfo.age }" placeholder="请输入年龄" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">QQ</label>
							<div class="layui-input-block">
								<input type="number" name="qq" required  lay-verify="required" value="${userPrimInfo.qq }" placeholder="请输入QQ" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">宿舍号</label>
							<div class="layui-input-block">
								<input type="text" name="dormnum" required  lay-verify="required" value="${userPrimInfo.dormnum }" placeholder="请输入宿舍号" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">寝室地址</label>
							<div class="layui-input-block">
								<input type="text" name="dormaddr" required  lay-verify="required" value="${userPrimInfo.dormaddr }" placeholder="请输入宿舍详细地址" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">家庭住址</label>
							<div class="layui-input-block">
								<input type="text" name="homeaddr" required  lay-verify="required" value="${userPrimInfo.homeaddr }" placeholder="请输入家庭详细地址" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">学号 <span class="layui-badge-dot"></span></label>
							<div class="layui-input-block">
								<input type="number" name="stuid" required  lay-verify="required" value="${user.stuid }" disabled="disabled" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
						 <div class="layui-form-item">
						    <div class="layui-input-block">
						      <button class="layui-btn center-form-btn" lay-submit lay-filter="formDemo" onclick="ajaxSavePrim()" >保存信息</button>   <span style="color: orangered;">注意:红点代表不可修改内容</span>
						    </div>
						  </div>
			    	</form>
			    </div>
			</div>
			<div class="layui-row">
				<!--标题-->
				<div class="site-title">
			      <fieldset><legend><a name="use">安全信息</a></legend></fieldset>
			    </div>
			    <div class="site-text site-block">
			    	<!--安全信息内容-->
			    	<form class="layui-form" action="" method="post">
			    		<input type="text" name="userid" value="${user.id }" disabled="disabled" style="display: none">
			    		<div class="layui-form-item layui-inline">
							<label class="layui-form-label">账号 <span class="layui-badge-dot"></span></label>
							<div class="layui-input-block">
								<input type="text" name="account" required  lay-verify="required" value="${user.account }" disabled="disabled" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">秘钥 <span class="layui-badge-dot"></span></label>
							<div class="layui-input-block">
								<input type="text" name="token" required  lay-verify="required" value="${userToken.token }" disabled="disabled" autocomplete="off" class="layui-input">
							</div>
						</div>
			    		<div class="layui-form-item layui-inline">
							<label class="layui-form-label">密码</label>
							<div class="layui-input-block">
								<input type="password" name="password" required  lay-verify="required" value="${user.password }" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">上次密码 <span class="layui-badge-dot"></span></label>
							<div class="layui-input-block">
								<input type="text" name="oldpassword" required  lay-verify="required" value="${user.oldpassword }" disabled="disabled" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
			    		
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">问题1</label>
							<div class="layui-input-block">
								<input type="text" name="question1" required  lay-verify="required" value="${userQuestion.question1 }" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">问题1答案</label>
							<div class="layui-input-block">
								<input type="text" name="answer1" required  lay-verify="required" value="${userQuestion.answer1 }" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">问题2</label>
							<div class="layui-input-block">
								<input type="text" name="question2" required  lay-verify="required" value="${userQuestion.question2 }" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">问题2答案</label>
							<div class="layui-input-block">
								<input type="text" name="answer2" required  lay-verify="required" value="${userQuestion.answer2 }" autocomplete="off" class="layui-input">
							</div>
						</div>
						<br />
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">问题3</label>
							<div class="layui-input-block">
								<input type="text" name="question3" required  lay-verify="required" value="${userQuestion.question3 }" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item layui-inline">
							<label class="layui-form-label">问题3答案</label>
							<div class="layui-input-block">
								<input type="text" name="answer3" required  lay-verify="required" value="${userQuestion.answer3 }" autocomplete="off" class="layui-input">
							</div>
						</div>
			    		<div class="layui-form-item">
						    <div class="layui-input-block">
						      <button class="layui-btn center-form-btn" lay-submit lay-filter="formDemo" onclick="ajaxSaveSafe()">保存信息</button>   <span style="color: orangered;">注意:红点代表不可修改内容</span>
						    </div>
						</div>
			    	</form>
			    </div>
			</div>
		</div>		
		<script type="text/javascript">
			$(document).ready(function(){
				layui.use('form', function(){
					var form = layui.form(); 
					form.render();
				});
			});
		</script>
	</body>
</html>
