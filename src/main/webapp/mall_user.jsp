<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="top">
	<div class="top_text">
		<c:if test="${user==null}">
			<a href="${pageContext.request.contextPath}/to_login.do">用户登录</a>
			<a href="">用户注册</a>
		</c:if>
		
		<c:if test="${user!=null}">
			<a href="${pageContext.request.contextPath}/log_out.do">用户登出</a>
			<a href="">欢迎${user.yh_nch}</a>
		</c:if>
	</div>
</div>
