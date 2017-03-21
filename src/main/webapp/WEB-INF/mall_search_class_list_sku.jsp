<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <c:forEach items="${list_object_sku}" var="sku" >
         ${sku.sku_mch}
         <img src="${pageContext.request.contextPath}/upload/${sku.product.shp_tp}">
         <a href="${pageContext.request.contextPath}/get_object_sku_by_shp_id_sku_id/${sku.sku_id}/${sku.shp_id}.do">${sku.sku_mch}</a><br>
    </c:forEach>
     
</body>
</html>