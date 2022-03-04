<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录页面</title>
<style type="text/css">

input{
    width: 320px;
    height: 45px;
    margin: 0px 8px;
    border-radius: 10px; /*圆角矩形*/
    text-indent: 10px; /*里面隐形的字体首行缩进*/
    margin: 10px auto;
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
    left:31%;
    
}
 .btn_login{
    width: 100px;
    height: 45px;
    margin: 0px 0px;
    border-radius: 8px; /*圆角矩形*/
    text-indent: 5px; /*里面隐形的字体首行缩进*/
    margin: 0px auto;
        position: absolute;
    left:47%;
}
.btn_register{
    width: 100px;
    height: 45px;
    margin: 0px 0px;
    border-radius: 8px; /*圆角矩形*/
    text-indent: 5px; /*里面隐形的字体首行缩进*/
    margin: 0px auto;
        position: absolute;
    left:63%;
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
position: absolute;height:250px;left:30%;top:30%; 
}
</style>

<script type="text/javascript">
 function check() {
    if(loginForm.username.value==""){
 	   alert("用户名不能为空！");
 	   return;
    }
    if(loginForm.password.value==""){
 	   alert("密码不能为空！");
 	   return;
    }
    registerForm.submit();
	}
</script>
</head>
<body style="background-color: #E4BEB4;">
	<form action="${pageContext.request.contextPath}/login" name="loginForm" method="post">
	
	<div class="table_div">
	<h3 align="center">用户登录</h3>
		<table align="center">
<!-- 		    <tr>
				<td colspan="2"><h2>通讯录</h2></td>
			</tr> -->
			<tr>
				<td>账号：</td>
				<td><input class="inputinfo" type="text" name="username" placeholder="账号" /></td>
			</tr>
			<tr >
				<td>密码：</td>
				<td><input class="inputinfo" type="password" name="password" placeholder="密码" /></td>
			</tr>
<!-- 			<tr>
				<td><input class="btn_reset" type="reset" value="清空" /></td>
				<td><input class="btn_login" type="submit" value="登录" /></td>
				<td><input class="btn_register" type="submit" value="注册" /></td>
			</tr> -->
		</table>
		<input class="btn_reset" type="reset" value="清空" />
		<input class="btn_login" type="submit" value="登录"  onclick="check()"/>
		<input class="btn_register" type="button" value="注册"  onclick="register()"/>
				<script type="text/javascript">

            function register(){

                window.location = "userregister.jsp";

            }

        </script>
		</div>
	</form>
</body>
</html>