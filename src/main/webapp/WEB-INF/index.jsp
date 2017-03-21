<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
 --%><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
<script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">

	function show_fenlei2(flbh1){
		$.getJSON("<%=application.getContextPath() %>/js/json/fl2_"+flbh1+".js",function(json){
			$("#fenlei2").empty();
			$(json).each(function(i,data){
				var show = "<li><a href='${pageContext.request.contextPath}/search_sku_attr_by_flbh2/"+data.id+"/"+data.flmch2+".do'  target='_blank'>"+data.flmch2+"</a></li>";
				$("#fenlei2").append(show);	
				$("#fenlei2").show(100);
			});
		});
	}
	
</script>
</head>
<body>
		
	<%@include file="/mall_user.jsp" %>

	<div id="fenlei1">
		<ul>
			<li onmouseover="show_fenlei2('6')"><a href="javascript:;" target="_blank">男装、女装、内衣</a></li>
			<li onmouseover="show_fenlei2('7')"><a href="javascript:;" target="_blank">家具、家居、家装</a></li>
			<li onmouseover="show_fenlei2('8')"><a href="javascript:;" target="_blank">电脑、办公</a></li>
			<li onmouseover="show_fenlei2('9')"><a href="javascript:;" target="_blank">清洁用品、化妆</a></li>
		</ul>
	</div>
	<ul style="display:block;" id="fenlei2">
	</ul>
</body>
</html>