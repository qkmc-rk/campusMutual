<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>后台管理 - 大学生校园互助平台</title>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/back/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/static/back/css/public.css"/>
		<script src="<%= request.getContextPath() %>/static/back/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/back/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%= request.getContextPath() %>/static/back/js/public.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div class="layui-header">
			<div class="top-bar">
				<h1 style="position: absolute; margin-left: 10px; margin-top: 12px; color: white;"><a href="index" style="color: #FFB800;">大学生校园互助平台</a></h1>
				<ul class="layui-nav" style="margin-right: 30px;">
				  <li class="layui-nav-item layui-layout-right">
				    <a href=""><img src="http://t.cn/RCzsdCq" class="layui-nav-img">我</a>
				    <dl class="layui-nav-child">
				      <dd><a href="javascript:;"></a></dd>
				      <dd><a href="javascript:;"></a></dd>
				      <dd><a href="javascript:loginoff();">退出登录</a></dd>
				    </dl>
				  </li>
				</ul>
			</div>
			<!--侧边导航栏-->
			<div class="side-bar">
				<ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="test">
				  <li class="layui-nav-item">
				    <a href="javascript:;">信息管理</a>
				    <dl class="layui-nav-child">
				      <dd><a href="helpinfo">求助信息</a></dd>
				    </dl>
				  </li>
				  <li class="layui-nav-item">
				    <a href="javascript:;">实名管理</a>
				    <dl class="layui-nav-child">
				      <dd><a href="certify">实名管理</a></dd>
				    </dl>
				  </li>
				</ul>
			</div>
		</div>
		<div class="layui-body" style="background-color: #EEEEEE;">
			<table id="info" lay-filter="certify"></table>
		</div>
		<script type="text/javascript">
			layui.use('element', function(){
			  var element = layui.element;
			});
		</script>
		<script>
			layui.use('table', function(){
			  var table = layui.table;
			  
			  //第一个实例
			  table.render({
			    elem: '#info'
			    ,height: 500
			    ,url: 'get/certify/all'
			    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
				,where:{token: window.localStorage.getItem('token'), userid: window.localStorage.getItem('userid')}
			    ,page: true //开启分页
			    ,cols: [[ //表头
			      {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
			      ,{field: 'userid', title: 'userid', width:80}
			      ,{field: 'state', title: 'state', width:80, sort: true}
			      ,{field: 'cardpath', title: 'cardpath', width:80} 
			      ,{fixed: 'right', width:150, align:'center', toolbar: '#barCRUD'} //这里的toolbar值是模板元素的选择器
			    ]]
			  });

			  table.on('tool(certify)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				  var data = obj.data; //获得当前行数据
				  var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
				  var tr = obj.tr; //获得当前行 tr 的DOM对象
				 
				  if(layEvent === 'detail'){ //查看
				    //do somehing
					alert("查看cardpath:" + data.cardpath);
					alert("查看userid:" + data.userid);
					alert("查看id:" + data.id);
					//查看操作首先获取图片名字
					var pic = data.cardpath;
					window.open('<%= request.getContextPath()%>/idcardimg/' + pic);

					
				  } else if(layEvent === 'pass'){ //删除
				    layer.confirm('真的审核通过么', function(index){
				      //向服务端发送删除指令
				    	$.ajax({
				    		type:"get",
				    		url:"passcertify/" + data.userid,
				    		async:true,
				    		data:{
				    			'userid':window.localStorage.getItem('userid'),
						  		'token':window.localStorage.getItem('token')
				    		},
				    		//根据返回值
				    		success:function(data2){
				    			var obj2 = JSON.parse(data2);
				    			if(obj2 != null && obj2.result == 'true'){
				    				layui.use('layer',function(){
						  				 var layer = layui.layer;
						  				 layer.msg('审核通过!');
						  			});
						  			//更新值
				    				obj.update({
				    				   state: '1'
				    				});
				    			}else{
				    				layui.use('layer',function(){
						  				 var layer = layui.layer;
						  				 layer.msg('审核失败!');
						  			});
				    			}
				    		},
				    		error:function(){
				    			layui.use('layer',function(){
					  				 var layer = layui.layer;
					  				 layer.msg('审核失败!');
					  			});
				    		}
				    	});
				    });
				  }
				});
			  
			});
		</script>
		<script type="text/html" id="barCRUD">
 		 	<a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
 		 	<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="pass">审核通过</a>
		</script>
	</body>
</html>
