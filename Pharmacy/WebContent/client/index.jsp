<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>百年药堂</title>
	<%-- 导入css --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/main.css" type="text/css" />
	<!-- 导入首页轮播图css和js脚本 -->
	<link type="text/css" href="${pageContext.request.contextPath }/client/css/autoplay.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/client/js/autoplay.js"></script>
</head>

<body class="main">
	<%@include file="head.jsp"%>
	<%@include file="menu_search.jsp" %>
	<%-- <div id="divad">
		<img src="${pageContext.request.contextPath}/client/ad/index_ad.jpg"/>
	</div> --%>
	
	<!-- 图书商场首页轮播图  start -->
	<div id="box_autoplay" style="position:absolute;top:25%;left:25%;">
    	<div class="list">
        	<ul>
            	<li><img src="${pageContext.request.contextPath }/client/ad/madingling.jpg" width="900" height="335" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/shexiangzhitong.jpg" width="900" height="335" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/lushui.jpg" width="900" height="335" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/jinsangzi.jpg" width="900" height="335" /></li>
            	<li><img src="${pageContext.request.contextPath }/client/ad/baidanbai.jpg" width="900" height="335" /></li>
        	</ul>
    	</div>
	</div>
	<!-- 图书商场首页轮播图  end -->	
	<div id="divcontent" style="position:absolute;top:65%;left:25.5%;background-color:#EEEEEE;">
		<table width="900px" border="0" cellspacing="0">
			<tr>
				<td width="497">
				<h2>最新通知：</h2>
<%-- 					<img src="${pageContext.request.contextPath}/client/images/billboard.gif" width="497" height="38" />
 --%>					<table cellspacing="0" class="ctl">
						<tr>
							<td width="485" height="100%">${n.details }</td>
						</tr>
					</table>
				</td>
				<td style="padding:5px 15px 10px 40px">
					<table width="100%" border="0" cellspacing="0">
						<tr>
							<td>
							<h2>最新热卖品：</h2>
<%-- 								<img src="${pageContext.request.contextPath}/client/images/hottitle.gif" width="126" height="29" />
 --%>							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0">
						<tr>
						<c:forEach items="${pList }" var="pArray">
							<td style="width:80; text-align:center">
								<a href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}">
									<img src="${pageContext.request.contextPath }${pArray[2]}" width="102" height="130" border="0" /> 
								</a>
								<br/> 
								<a href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}">${pArray[1]}</a>
								<%-- <br />作者:${pArray[2] } --%>
							</td>
						</c:forEach>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
<%-- 	<%@ include file="foot.jsp" %>
 --%></body>
</html>
