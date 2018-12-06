<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台图书列表</title>
<script type="text/javascript">
	function gotoPage() {
		var pageNum = document.getElementById("pageNum").value; //要跳转的页数
		var totalPage = ${requestScope.page.totalPage}; //总页数
		if (pageNum > 0) {
			if (pageNum <= totalPage) {
				window.location.href = "BackAllBookSvl?current=" + pageNum; //访问servlet
			} else {
				alert("请您输入1到" + totalPage + "之间的正整数");
			}
		} else {
			alert("请您输入正确数字");
		}

	}
</script>
</head>
<body>
	<table align="center" width="90%">
		<tr>
			<td align="right">管理员：admin &nbsp; <a href="#">退出</a></td>
		</tr>
		<tr>
			<td align="center"><a
				href="${pageContext.request.contextPath}/BackAllBookSvl">图书列表</a>&nbsp;
				<a href="${pageContext.request.contextPath}/back/bookadd.jsp">新书上架</a>&nbsp;
				<a href="#">书增加库存</a>&nbsp; <a href="#">书下架</a>&nbsp; <a href="#">用户管理</a>&nbsp;
				<a href="#">修改售价</a>&nbsp; <a href="#">用户购买记录</a>&nbsp;</td>
		</tr>
		<tr>
			<td align="right">
				<div style="margin-right: 20px">

					<div class="header-info">
						共<span class="info-number">${requestScope.page.totalCount }</span>条结果，
						分成<span class="info-number">${requestScope.page.totalPage }</span>页显示，
						当前第<span class="info-number">${requestScope.page.currentPage }</span>页
					</div>
					<div class="header-nav">
						<input type="button" class="clickbutton" value="首页"
							onclick="window.location.href='BackAllBookSvl?current=1'" />
						<c:if test="${requestScope.page.currentPage ne 1 }">
							<input type="button" class="clickbutton" value="上页"
								onclick="window.location.href='BackAllBookSvl?current=${requestScope.page.currentPage-1}'" />
						</c:if>
						<c:if
							test="${requestScope.page.currentPage < requestScope.page.totalPage}">
							<input type="button" class="clickbutton" value="下页"
								onclick="window.location.href='BackAllBookSvl?current=${requestScope.page.currentPage+1}'" />
						</c:if>
						<input type="button" class="clickbutton" value="末页"
							onclick="window.location.href='BackAllBookSvl?current=${requestScope.page.totalPage}'" />
						跳到第<input type="text" id="pageNum" name="pageNum"
							class="nav-number">页 <input type="button"
							class="clickbutton" value="跳转" onclick="gotoPage()" />
					</div>
				</div>
			</td>
		</tr>
		<tr>
		<tr>
			<td>
				<table align="center" border="1" width="100%">

					<c:forEach var="book" items="${requestScope.page.list}">
						<tr>
							<td rowspan="6"><img width="140px" height="140px"
								src="${pageContext.request.contextPath}/upload/${book.imgpath}" /></td>
							<td colspan="2">${book.bname }</td>
						</tr>

						<tr>
							<td>图书价格</td>
							<td>${book.price }</td>
						</tr>

						<tr>
							<td>图书作者</td>
							<td>${book.author }</td>
						</tr>

						<tr>
							<td>发布时间</td>
							<td><fmt:formatDate value="${book.createdate }"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
						</tr>

						<tr>
							<td>库存</td>
							<td>${book.storage}</td>
						</tr>
						<tr>
							<td colspan="2"><a
								href="BookDeatilSvl?bookid=${book.bookid}">查看详情</a>&nbsp&nbsp <a
								href="${pageContext.request.contextPath}/back/addstorage.jsp?bookid=${book.bookid}">添加库存</a>&nbsp&nbsp
								<c:if test="${book.bookstatus eq 0 }">
									<a
										href="${pageContext.request.contextPath}/BookPutDownSvl?bookid=${book.bookid}&bookstatus=1">下架图书</a>
								</c:if> <c:if test="${book.bookstatus eq 1 }">
									<a
										href="${pageContext.request.contextPath}/BookPutDownSvl?bookid=${book.bookid}&bookstatus=0">上架图书</a>
								</c:if></td>
						</tr>
						<tr height="30px">
						</tr>

					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>