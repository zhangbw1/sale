<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${err}
	<form action="login.do" method="post">
		<input type="text" name="yh_mch"/><br>
		<input type="text" name="yh_mm"/><br>
		<input type="checkbox" name="auto_login" value="1"/>自动登录
		<input type="submit" value="登录"/>
	</form>
</body>
</html>