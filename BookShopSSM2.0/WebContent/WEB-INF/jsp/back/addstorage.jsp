<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>增加库存</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/AddStorageSvl" method="get">
         书增加的数量： <input type="text"  name="strnum" />
       <input type="text" name="bookid" value="${param.bookid}" hidden="hidden" />
    <input type="submit" value="确定增加" />
    </form>
</body>
</html>