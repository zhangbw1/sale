<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">

   /*  function(){
    	
    	$("#rollback").click(function(){
    		
    	});
    } */
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

     支付成功！<br>
     <input id="rollback" type="button" onclick="javascript:history.back()" value="返回上个页面"></input>
     <a href="${pageContext.request.contextPath}/goto_index.do">返回主页</a>

</body>
</html>