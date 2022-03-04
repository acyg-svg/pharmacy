<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="sise.cyg.bean.User"%>
<script type="text/javascript">
//退出确认框
function confirm_logout() {   
    var msg = "您确定要退出登录吗？";   
    if (confirm(msg)==true){   
    return true;   
    }else{   
    return false;   
    }   
} 
</script>
<div id="divhead">
	<table cellspacing="0" class="headtable">
		<tr>
			<td>
				<a href="${pageContext.request.contextPath }/index.jsp">
					<img src="${pageContext.request.contextPath}/client/images/logo3.png" width="400" height="100" border="0" style="position:absolute;left:38%; top:5%;"/> 
				</a>
			</td>
			<td style="text-align:right">
<%-- 				<img src="${pageContext.request.contextPath}/client/images/cart.gif" width="26" height="23" style="margin-bottom:-4px" />
 --%>				   &nbsp;
				  <a href="${pageContext.request.contextPath}/client/cart.jsp">购物车</a> 
				 <!-- <a href="#">帮助中心</a> --> 
				 <a href="${pageContext.request.contextPath}/myAccount">我的帐户</a>
				<% 
				User user = (User) request.getSession().getAttribute("user");
				if(null == user){
				%>
				 <a href="${pageContext.request.contextPath}/client/userregister.jsp">新用户注册</a>							
				<% 	
				}else{
				%>
				 <a href="${pageContext.request.contextPath}/logout" onclick="javascript:return confirm_logout()">退了</a>
				<br><br><br>当前用户： ${user.username}
				<% 	
				}
				%>			
			</td>		
		</tr>
	</table>
</div>