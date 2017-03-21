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

   function change_shoppingCar(sku_id,tjshl){
	   var flag = $("#shopping_car_checkbox_"+sku_id).attr("checked");
	   var check;
	   if(flag == "checked"){
		   check="1";
	   }else{
		   check="0";
	   }
	 
	   $.ajax({
			   url: "${pageContext.request.contextPath}/change_shoppingCar.do",
			   type: "get",
			   data: {"sku_id":sku_id,"tjshl":tjshl,"shfxz":check},
			   success: function(data){
				   $("#mall_shoppingCar_content").html(data);
			   }});
	 /*   alert(123); */
   }
</script>
</head>
<body>
       <h1>购物车</h1>
       <div id="mall_shoppingCar_content">
           <jsp:include page="mall_shoppingCar_content.jsp"></jsp:include> 
       </div>
</body>
</html>