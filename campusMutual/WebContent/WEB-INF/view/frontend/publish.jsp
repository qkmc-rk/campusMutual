<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>大学生校园互助平台</title>
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/static/layui/css/layui.css" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/static/css/public.css" />
	<script src="<%= request.getContextPath() %>/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%= request.getContextPath() %>/static/layui/layui.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
	<div class="layui-fluid">
		<!--导航栏-->
		<ul class="layui-nav" layui-filter="">
			<li class="layui-nav-item logo">
				<h2>发布 - 大学生校园互助平台</h2>
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
						<a name="use">发布求助信息</a>
					</legend>
				</fieldset>
			</div>
			<div class="site-text site-block publish-block">
				<!--基础信息内容-->
				<form class="layui-form" action="" method="post">
					<div class="layui-form-item layui-inline">
						<label class="layui-form-label">标题</label>
						<div class="layui-input-block">
							<input type="text" name="title" required lay-verify="required"
								value="" placeholder="请输入标题" autocomplete="off"
								class="layui-input"> <input type="number"
								disabled="disabled" name="userid" value="${user.id }"
								style="display: none">
						</div>
					</div>
					<br />
					<div class="layui-form-item layui-inline">
						<label class="layui-form-label">截止时间</label>
						<div class="layui-input-block">
							<input type="text" name="timeout" class="layui-input"
								id="timeout">
							
						</div>
					</div>
					<br />
					<div class="layui-form-item layui-inline">
						<label class="layui-form-label">备注</label>
						<div class="layui-input-block">
							<input type="text" name="tip" required lay-verify="required"
								placeholder="请输入备注" autocomplete="off" class="layui-input">
						</div>
					</div>
					<br />
					<div class="layui-form-item layui-inline">
						<label class="layui-form-label">赏金</label>
						<div class="layui-input-block">
							<input type="number" name="reward" required lay-verify="required"
								placeholder="请输入金额(元)" autocomplete="off" class="layui-input">
						</div>
					</div>
					<br />
					<div id="editor">
						<p>
							在这里键入 <b>求助信息详情内容</b>
						</p>
						<p style="color: orange">(提示:为美观起见,可尽量将内容居中)</p>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
						</div>
					</div>
				</form>
			</div>
			<button class="layui-btn center-from-btn" onclick="ajaxPublish()" style="margin-bottom: -38px;">发布任务</button>
		</div>
	</div>
	<input type="text" value="<%= request.getContextPath()%>" name="contextPath" style="display:none;">
	
	<script src="<%=request.getContextPath()%>/static/js/jquery-2.1.0.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="<%=request.getContextPath()%>/static/layui/layui.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="<%=request.getContextPath()%>/static/js/wangEditor.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="<%=request.getContextPath()%>/static/js/front/publish.js"
		type="text/javascript" charset="utf-8"></script>
		<script>
			layui.use('laydate', function(){
				var laydate = layui.laydate;
				//执行一个laydate实例
				laydate.render({
					elem: '#timeout' //指定元素
				});
			});
		</script>
	<script type="text/javascript">
		var rootPath = $("input[name=contextPath]").val();
		var E = window.wangEditor;
	
		var editor = new E('#editor');
	
		/*配置文件上传信息*/
		editor.customConfig.uploadImgServer = rootPath + "/upload/uploadimg";
		editor.customConfig.uploadFileName = "img";
		/*上传完成的动作*/
		editor.customConfig.uploadImgHooks = {
			customInsert : function(insertImg, result, editor) {
				var host = "http://" + location.hostname + ":" + location.port + '/';
				var url = host + rootPath
						+ result.data[0];
				insertImg(url);
			},
			fail : function(xhr, editor, result) {
				if (result.errno == -1) {
					alert("上传图片失败!");
				}
			}
		}
		editor.create();
	</script>
</body>
</html>
