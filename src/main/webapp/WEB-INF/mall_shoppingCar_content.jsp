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
<script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">
	function show_check(){
		$("input:checkbox").each(function(i,myCheck){
			if(myCheck.value=="select_1"){
				myCheck.checked=true;
			}
		});
	}
	
	$(document).ready(function(){
		show_check();
	});
</script> 
</head>
<body>
     <form action="${pageContext.request.contextPath}/goto_orders.do" method="post">
	       <c:forEach items="${carList}" var="car" varStatus="index">
	       <input type="hidden" name="list_car[${index.index}].id" value="${car.id}"></input>
	    <input type="hidden" name="list_car[${index.index}].sku_mch" value="${car.sku_mch}"></input>
	       <input type="hidden" name="list_car[${index.index}].sku_jg" value="${car.sku_jg}"></input>
	       <input type="hidden" name="list_car[${index.index}].tjshl" value="${car.tjshl}"></input>
	       <input type="hidden" name="list_car[${index.index}].hj" value="${car.hj}"></input>
	       <input type="hidden" name="list_car[${index.index}].yh_id" value="${car.yh_id}"></input>
	       <input type="hidden" name="list_car[${index.index}].shp_id" value="${car.shp_id}"></input>
	   <%--     <input type="hidden" name="list_car[${index.index}].chjshj" value="${car.chjshj}"></input>  --%>
	       <input type="hidden" name="list_car[${index.index}].sku_id" value="${car.sku_id}"></input>
	       <input type="hidden" name="list_car[${index.index}].shp_tp" value="${car.shp_tp}"></input>
	       <input type="hidden" name="list_car[${index.index}].shfxz" value="${car.shfxz}"></input> 
	       <input id="shopping_car_checkbox_${car.sku_id}" type="checkbox" value="select_${car.shfxz}"  onchange="change_shoppingCar(${car.sku_id},${car.tjshl})"/>
	                  商品名称:${car.sku_mch}
	                  商品价格:${car.sku_jg}
	                  测试时间：：：${car.chjshj}
	                  数量：<a href="javascript:change_shoppingCar(${car.sku_id},${car.tjshl-1});">-<a/>
	       ${car.tjshl}
	           <a href="javascript:change_shoppingCar(${car.sku_id},${car.tjshl+1});" >+</a><br>
	       </c:forEach>
	                  支付金额：<input type="hidden" value="${sum}" name="sum"/>${sum}
	       <hr><input type="submit" value="结算"/>
	       
     </form>
</body>
</html>