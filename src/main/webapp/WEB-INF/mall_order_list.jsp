<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mall_order_list.jsp</title>
<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">
     function show_address_name(yh_dz,dzh_id){
    	/* var a = $.type(dzh_id); */
    	$("#address_name").html(yh_dz,dzh_id);
    	
    	//$("#address_name").append("<input type='hidden' value='dzh_id' name='dzh_id'></input> ");
    	
     }
</script>
</head>
<body>
        <form action="${pageContext.request.contextPath}/save_orders.do" method="post">
                            收货人信息:<br>
           <c:forEach items="${list_object_order[0].list_address}" var="address" >
               <input onchange="show_address_name('${address.yh_dz},${address.id}')" type="radio" value="${address.id}" name="dzh_id">${address.yh_dz}</input><br>
           </c:forEach>  
           <br>
           <!-- -->
                            送货清单:<br>
                                   配送方式 :  ${list_object_order[0].psfsh}<br>
           <c:forEach items="${list_object_order}" var="object_order"> 
                   ${object_order.shp_mch}|数量：${object_order.sku_shl}<br>
           </c:forEach>  
           <hr>   
                             配送至:<div id=address_name></div>
                             总金额：${sum}  
           <input name="sum" value="${sum}" type="hidden"/><br> 
           <input type="submit"  value="提交订单"></input>                        
        </form>                   
</body>
</html>