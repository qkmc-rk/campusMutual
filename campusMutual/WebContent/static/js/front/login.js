function ajaxLogin(){
	//首先获取用户名和密码
	var account = $("#account").val();
	var password = $("#password").val();
	//alert(account+password);
	
	//发送ajax请求进行登录
	$.ajax({
		type:"post",
		url:"user/login",
		async:true,
		data:{
			'account':account,
			'password':password
		},
		//根据返回值
		success:function(data){
			var obj = JSON.parse(data);
			if(obj.result == 'false'){
				alert("登录失败");
			}else{
				window.location.href = "user/index";
			}
		},
		error:function(){
			alert("没有这个用户!");
		}
	});
}