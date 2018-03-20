function ajaxSavePrim(){
	//首先获取用户基本信息
	var userid = $("input[name=userid]").val();
	var neckname = $("input[name=neckname]").val();
	var usermail = $("input[name=usermail]").val();
	var userphone = $("input[name=userphone]").val();
	var sex = $("select[name=sex]").val();
	var age = $("input[name=age]").val();
	var qq = $("input[name=qq]").val();
	var dormnum = $("input[name=dormnum]").val();
	var dormaddr = $("input[name=dormaddr]").val();
	var homeaddr = $("input[name=homeaddr]").val();
	//alert(userid + "  " + neckname + "  " + usermail + "  " + userphone + "  " + sex + "  " + age + "  " + qq + "  " + dormnum + "  " + dormaddr + " " + homeaddr);
	
	//发送ajax请求进行登录
	$.ajax({
		type:"post",
		url:"saveuserprim",
		async:false,
		data:{
			'userid':userid,
			'neckname':neckname,
			'usermail':usermail,
			'userphone':userphone,
			'sex':sex,
			'age':age,
			'qq':qq,
			'dormnum':dormnum,
			'dormaddr':dormaddr,
			'homeaddr':homeaddr
		},
		//根据返回值
		success:function(data){
			var obj = JSON.parse(data);
			if(obj.result == 'false'){
				alert("更新信息失败!");
			}else{
				alert("更新信息成功!");
			}
		},
		error:function(){
			alert("服务器error:更新信息失败!");
		}
	});
}

function ajaxSaveSafe(){
	//首先获取用户安全相关
	var userid = $("input[name=userid]").val();
	var account = $("input[name=account]").val();
	var token = $("input[name=token]").val();
	var password = $("input[name=password]").val();
	var question1 = $("input[name=question1]").val();
	var answer1 = $("input[name=answer1]").val();
	var question2 = $("input[name=question2]").val();
	var answer2 = $("input[name=answer2]").val();
	var question3 = $("input[name=question3]").val();
	var answer3 = $("input[name=answer3]").val();
	
	//alert(userid + "  " + account + "  " + token + "  " + password + "  " + question1 + "  " + answer1 + "  " + question2 + "  " + answer2 + "  " + question3 + " " + answer3);
	
	//发送ajax请求进行登录
	$.ajax({
		type:"post",
		url:"saveusersafe",
		async:false,
		data:{
			'userid':userid,
			'password':password,
			'question1':question1,
			'answer1':answer1,
			'question2':question2,
			'answer2':answer2,
			'answer3':answer3,
			'question3':question3
		},
		//根据返回值
		success:function(data){
			var obj = JSON.parse(data);
			if(obj.result == 'false'){
				alert("更新失败!");
			}else{
				alert("更新成功!");
			}
		},
		error:function(){
			alert("服务器error:更新失败!");
		}
	});
}