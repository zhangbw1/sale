<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
      function show_miniCar(){
    	  /* alert(1); */
    	  $.get("${pageContext.request.contextPath}/miniCar.do",function(data){
    		  $("#miniCar_content").html(data);
    	  });
      }
      
      function hide_miniCar(){
    	  $("#miniCar_content").empty();
      }
      
</script>
</head>
<body>
        <div id="" style="width:100px;height: 20px;border: 1px solid gray; float:right;">
                <a target="_blank" href="${pageContext.request.contextPath}/goto_car.do " onmouseover="show_miniCar()" onmouseout="hide_miniCar()" >购物车</a>    
        </div>
        
        <div id="miniCar_content" style="width:100px;float:right;">
        
        </div>
</body>
</html>