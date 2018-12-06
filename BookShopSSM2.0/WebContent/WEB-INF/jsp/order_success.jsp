<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${flag eq 1}">
		<p align="center" style="color: red; font-size: 30px">订单提交成功</p>
		<p align="center" style="color: red; font-size: 30px">是否继续购物</p>

	</c:if>
	<c:if test="${flag ne 1}">
		<p align="center" style="color: red; font-size: 30px">订单失败</p>
	</c:if>
</body>
</html>