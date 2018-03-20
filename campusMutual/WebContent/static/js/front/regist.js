
function ajax_regist(){
	//首先获取信息
	var firstname = $("#firstname").val();
	var lastname = $("#lastname").val();
	var stuid = $("#stuid").val();
	var account = $("#account").val();
	var password = $("#password").val();
	var password2 = $("#password2").val();
	if(password != password2){
		alert("两次输入密码不一致");
		return;
	}
	
	//开始注册
	$.ajax({
		type:"post",
		url:"user/regist",
		async:true,
		data:{
			'firstname':firstname,
			'lastname':lastname,
			'stuid':stuid,
			'account':account,
			'password':password
		},
		//根据返回值
		success:function(data){
			var obj = JSON.parse(data);
			if(obj.result == 'false'){
				alert("注册失败了");
			}else{
				alert("注册成功!请登录");
				//暂时这样设置,会出问题
				window.location.href = "/campusMutual/logpage";
			}
		},
		error:function(){
			alert("error:注册失败!");
		}
	});
}