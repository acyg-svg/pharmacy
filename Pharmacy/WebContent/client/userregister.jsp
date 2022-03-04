<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册页面</title>
<style type="text/css">

input{
    width: 320px;
    height: 20px;
    margin: 0px 8px;
    border-radius: 10px; /*圆角矩形*/
    text-indent: 10px; /*里面隐形的字体首行缩进*/
    margin: 10px auto;
}
.gender{
    width: 50px;
    height: 50px;
}
.h3{
    text-align:center;
}
.btn_reset{
    width: 100px;
    height: 45px;
    margin: 0px 0px;
    border-radius: 8px; /*圆角矩形*/
    text-indent: 5px; /*里面隐形的字体首行缩进*/
    margin: 0px auto;
    position: absolute;
    left:33%;
    
}
 .btn_complete{
    width: 100px;
    height: 45px;
    margin: 0px 0px;
    border-radius: 8px; /*圆角矩形*/
    text-indent: 5px; /*里面隐形的字体首行缩进*/
    margin: 0px auto;
        position: absolute;
    left:49%;
}
.btn_back{
    width: 100px;
    height: 45px;
    margin: 0px 0px;
    border-radius: 8px; /*圆角矩形*/
    text-indent: 5px; /*里面隐形的字体首行缩进*/
    margin: 0px auto;
        position: absolute;
    left:65%;
}
table{
	text-align:center;
}
tr{
align:center;
}
.table_div{
width:800px;
margin:0 auto;
position: absolute;height:250px;left:28%;top:23%; 
}
</style>
<script type="text/javascript">
function validate() {
    if(registerForm.username.value==""){
 	   alert("用户名不能为空！");
 	   return;
    }
    if(registerForm.password.value!=registerForm.rpassword.value){
 	   alert("两次输入密码必须一致！");
 	   return;
    }
    registerForm.submit();
	}
	
function changeImage() {
	// 改变验证码图片中的文字
	document.getElementById("img").src = "${pageContext.request.contextPath}/imageCode?time="
			+ new Date().getTime();
}
</script>
</head>
<body style="background-color: #E4BEB4;">
	<form action="${pageContext.request.contextPath}/register" name="registerForm" method="post">
	<div class="table_div">
	<h3 align="center">用户注册</h3>
		<table align="center">
			<tr>
				<td>账号：</td>
				<td><input class="inputinfo" type="text" name="username"  id="username" placeholder="请输入账号" /></td>
			</tr>
			<tr>
			    <td>邮箱：</td>
			    <td><input class="inputinfo" id="email" type="text" name="email" placeholder="请输入有效邮箱" onkeyup="checkEmail();"/></td>
			</tr>
			<tr >
				<td>密码：</td>
				<td><input class="inputinfo" type="password" name="password"  id="password" placeholder="请输入密码" /></td>
			</tr>
			<tr >
				<td>确认密码：</td>
				<td><input class="inputinfo" type="password" id="repassword" name="repassword" placeholder="请确认密码" /></td>
			</tr>
			<tr>
			    <td>性别：</td>
			    <td >
                                          男<input type="radio" name="gender" value="男" checked="checked" class="gender"/>
									
				  女<input type="radio" name="gender" value="女" class="gender"/> 
				</td>
			</tr>
			<tr>
			    <td>电话：</td>
			    <td><input class="inputinfo" type="text" name="telephone" placeholder="请输入电话" /></td>
			</tr>
			<tr>
			    <td>个人介绍：</td>
			    <td>
			    <textarea class="textarea" name="introduce"></textarea>
			    </td>
			</tr>
			<tr>
				<td >输入验证码：</td>
				<td >
				<input type="text" class="textinput"/>
				</td>
				</tr>
				<tr>
			</tr>
				<tr>
				<td><a href="javascript:void(0);" onclick="changeImage()">看不清，换一张</a></td>
			    <td rowspan="2" style="width: 50%">
					<img src="${pageContext.request.contextPath}/imageCode" width="180"
						height="30" class="textinput" style="height: 30px;" id="img" />
						</td>
			</tr>
		</table>
		<input class="btn_reset" type="reset" value="清空" />
		<input class="btn_complete" type="submit" value="完成" onClick="validate()"/>
		<input class="btn_back" type="button" value="返回"  onclick="back()"/>
		<script type="text/javascript">

            function back(){

                window.location = "userlogin.jsp";

            }

        </script>
		</div>
	</form>
</body>
</html>