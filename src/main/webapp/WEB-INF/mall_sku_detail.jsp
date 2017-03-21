<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">
	function add_car(){
		$("#add_car_form").submit();
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mall_sku_detail.jsp</title>
</head>
<body>
	${sku.sku_mch}
	价格：${sku.jg}
	库存：${sku.kc}
	<div id="" style="width:100px;height: 20px;border: 1px solid gray; float:right;">
                <a target="_blank" href="${pageContext.request.contextPath}/goto_car.do " onmouseover="show_miniCar()" onmouseout="hide_miniCar()" >购物车</a>    
    </div>
	<hr>
	<c:forEach items="${sku.list_img}" var="img">
		<img src="${pageContext.request.contextPath}/upload/${img.url}" width="100px"/>
	</c:forEach>
	<hr>
		<a href="javascript:add_car();">加入购物车</a>
		<form id="add_car_form" action="${pageContext.request.contextPath}/add_car.do" method="post" target="_blank">
		    <input type="hidden" value="${sku.sku_mch}" name="sku_mch"/>
			<input type="hidden" value="${sku.jg}" name="sku_jg"/>
			<input type="hidden" value="1" name="tjshl"/>
			<input type="hidden" value="${sku.shp_id}" name="shp_id"/>
			<input type="hidden" value="${sku.sku_id}" name="sku_id"/>
			<input type="hidden" value="${sku.shp_tp_url}" name="shp_tp"/>
		</form>
	<hr>
	
	
	<%-- <c:forEach items="${list_sku}" var="lsku">
		<a href="${pageContext.request.contextPath}/get_object_sku_by_shp_id_sku_id/${lsku.sku_id}/${lsku.shp_id}.do">${lsku.sku_mch}</a><br>
	</c:forEach> --%>
	
	<a href="${pageContext.request.contextPath}/get_object_sku_by_shp_id_sku_id/${sku.sku_id}/${sku.shp_id}.do">${sku.sku_mch}</a><br>
	 
	<hr>
	参数配置：
	<c:forEach items="${sku.list_o_a_v_n}" var="o_a_v_n">
		${o_a_v_n.attr_name}:${o_a_v_n.value_name}
	</c:forEach>
	<hr>
	${sku.shp_msh}
</body>
</html>