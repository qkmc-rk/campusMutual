
$(document).ready(function(){
	$("input[name=stuid]").blur(function(){
		//首先获取stuid,通过ajax获取到问题,在ajax中开启input
		ajaxGetQ();
	});
});

function ajaxGetQ(){
	//首先获取用户名和密码
	var stuid = $("input[name=stuid]").val();
	if(stuid == null) return;
	
	//发送ajax请求请求问题
	$.ajax({
		type:"post",
		url:"user/getq",
		async:true,
		data:{
			'stuid':stuid
		},
		//根据返回值
		success:function(data){
			var obj = JSON.parse(data);
			if(obj != null){
				$("input[name=answer1]").attr('placeholder',obj.question1);
				$("input[name=answer2]").attr('placeholder',obj.question2);
				$("input[name=answer3]").attr('placeholder',obj.question3);
				$("input[name=answer1]").css('display','inline');
				$("input[name=answer2]").css('display','inline');
				$("input[name=answer3]").css('display','inline');
			}
		},
		error:function(){
			alert("获取问题失败!");
		}
	});
}

function ajaxResetPassword(){
	//获取问题的三个答案和学号
	var stuid = $("input[name=stuid]").val();
	var answer1 = $("input[name=answer1]").val();
	var answer2 = $("input[name=answer2]").val();
	var answer3 = $("input[name=answer3]").val();
	
	$.ajax({
		type:"post",
		url:"user/findpassword",
		async:true,
		data:{
			'stuid':stuid,
			'answer1':answer1,
			'answer2':answer2,
			'answer3':answer3
		},
		//根据返回值
		success:function(data){
			var obj = JSON.parse(data);
			if(obj != null && obj.result == 'true'){
				alert("密码已经重置,请打开个人信息中的邮件查看新的密码!");
				window.close();
			}
		},
		error:function(){
			alert("重置密码失败!!!!");
		}
	});
	
}