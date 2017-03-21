<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>order.pay.jsp</title>
</head>
<body>
        
   <form action="${pageContext.request.contextPath}/pay_orders.do" method="post">     
		       订单详情：<br/>
		           地址：${list_object_order[0].dzh_mch} <nbsp>${list_object_order[0].shhr}<br>
		           商品：<br>
		         <c:forEach items="${list_object_order }" var="order">
		            ${order.shp_mch} <br>
		         </c:forEach>
		           总金额：${sum} 
		          
		          <input type="hidden" name="sum" value="${sum}"></input> <br>
		          <input type="submit" value="立即支付"></input>     
   </form>  
</body>
</html>