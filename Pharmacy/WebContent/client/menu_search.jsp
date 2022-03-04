<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>

<%!
public String convert(String data){
	String str = "";
	for(int i=0;i<data.length();i++){
		str+="/u"+Integer.toHexString(data.charAt(i));
	}
	String context = "http://localhost:8080/Pharmacy";
	String address = context+"/showProductByPage?category="+str;
	return address;
}
%>
<div id="divmenu" style="background-color:#257EB9; border-top-color:#257EB9; position:absolute; top:20%">
		<a href="<%=convert("抗疫物资") %>">抗疫物资</a> 
		<a href="<%=convert("中药药材") %>">中药药材</a> 
		<a href="<%=convert("外用") %>">外用</a> 
		<a href="<%=convert("感冒") %>">感冒</a> 
		<a href="<%=convert("发烧") %>">发烧</a>
		<a href="<%=convert("养胃") %>">养胃</a> 
		<a href="<%=convert("医疗器械") %>">医疗器械</a> 
		<%-- <a href="<%=convert("消毒用品") %>">消毒用品</a> 
		<a href="<%=convert("滋补用药") %>">滋补用药</a>
		<a href="<%=convert("维生素与矿物质类") %>">维生素与矿物质类</a> 
		<a href="<%=convert("感冒用药") %>">感冒用药</a> 
		<a href="<%=convert("中药内科") %>">中药内科</a> 
		<a href="<%=convert("中药饮片") %>">中药饮片</a>
		<a href="<%=convert("中药药材") %>">中药药材</a>  --%>
		<a href="<%=convert("全部商品") %>" style="color:white;">全部商品</a>		
</div>
<%-- <div id="divsearch" style="background-color:white;">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px; position:absolute;left:75%; top:26%;">
				<!-- Search --> 
				<input type="text" name="textfield" class="inputtable" id="textfield" value=""
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/>
				<a href="#">
					<img src="${pageContext.request.contextPath}/client/images/
					serchbutton.gif" border="0" style="margin-bottom:-4px"
					 onclick="search()"/>
				</a>
			</td>
		</tr>
	</table>
</form>
</div> --%>