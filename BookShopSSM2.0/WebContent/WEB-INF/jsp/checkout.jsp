<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
	<head>
		<meta charset="UTF-8">
		<title>结算页面</title>
		<link type="text/css" rel="stylesheet" href="css/count.css" />
	</head>
	<body>
	<form action="${pageContext.request.contextPath}/submitOrder.action" method="get">
		<div class="div01">
			<!--左边div-->
			<div class="leftdiv"></div>
        		   	
		   	<!--中间div-->
		   	<div class="middiv">
		   		<!--灰色部分div-->
		   		<div class="mid_01">
		   			<div class="mid_01_1">
		   				<a href="index1.html" class="a1">
		   					<font size="2">&nbsp;&nbsp;&nbsp;京东首页</font> 
		   				</a>
		   				<font size="2" color="gray">&nbsp;&nbsp;&nbsp;北京</font>
		   			</div>
		   			<div class="mid_01_2">
		   				<font class="font4">
		   					| <a href="index5.html" class="a1">我的订单</a>
		   					| 我的京东 | 京东会员 | 企业采购 | 客户服务 | 网站导航 | 手机京东   
		   				</font>
		   			</div>
		   		</div>
		   	
		   		<!--logo div-->
		   		<div class="mid_02">
		   			<div class="mid_02_1">
		   				<img src="img/logo.jpg" class="img1" /><br />
		   				<font size="2" >填写并和对订单信息</font>
		   			</div>
		   			<div class="mid_02_2">
		   				<font size="5" >结算页</font>
		   			</div>
		   		</div>
		   		<div class="linediv"></div>
		   		
		   		<!--核对订单表下面的div-->
		   		<div class="mid_03">
		   			<div class="mid_03_1">
		   				<font class="font1">收货人信息</font>
		   				<font class="font2"><a href="add_address.html" class="a2">新增收货地址</a> </font>
                    </div>
		   			<div class="mid_03_2">
		   				<div class="mid_03_2_1">
		   				  <select class="input1" name="select">
		   				    <c:forEach var="recipient" items="${requestScope.recipients}">
                              <option value="${recipient.recipientid}">${recipient.recipientname}   ${recipient.address}  ${recipient.recipientphone}</option>
                            </c:forEach>
                          </select>
		   				</div>
		   				<div class="mid_03_2_2">
		   					<input type="button" value="默认地址" class="input2"/>
		   				</div>
		   			</div>
		   			<div class="mid_03_3">
		   				<a href="address.html" class="a1">
		   					更多地址
		   				</a>
		   			</div>
		   		</div>
		   		
		   		<div class="linediv1"></div>
		   		
				<!--图书div-->
		   		<div style="width: 100%;height: 55%;background-color: #F3FBFE;">
		   			<table style="width: 100%;height: 100%;text-align: center;">
		   				<tr>
		   					<td><font class="font5">图书</font> </td>
		   					<td></td>
		   					<td><font class="font5">单价</font> </td>
		   					<td><font class="font5">数量</font> </td>
		   					<td><font class="font5">库存</font> </td>
		   				</tr>
		   			<c:forEach var="cartshop" items="${requestScope.list}">
		   				<tr>
		   					<td><img src="${pageContext.request.contextPath}/upload/${cartshop.imgpath}" style="height: 150px;width: 150px"/> </td>
		   					<td><font class="font6">[满49减15元] ${cartshop.author}著
		   					   <br />${cartshop.bname}
		   					   </font>
		   					   <br />
		   					   <font class="font7">支持七天无理由退货</font>
		   					</td>
		   					<td><font class="font8">￥${cartshop.price} </font> </td>
		   					<td>${cartshop.count}</td>
		   					<td><font>有货</font></td>
		   				</tr>
		   				
		   			<input type="text" name="bookid" value="${cartshop.bookid }" hidden="hidden"/>
		   			<input type="text" name="count" value="${cartshop.count}" hidden="hidden"/>
		   			</c:forEach>
		   	        <input type="text" name="total" value="${requestScope.total }" hidden="hidden"/>
		   			
		   		  </table>
		   		</div>
		   		
		   		<!--最下面的div-->
		   		<div class="botdiv">
		   			<div class="botdiv_01	">
		   				<font class="font9">应付金额:</font>
		   				<font class="font10">￥${requestScope.total} </font>
		   				<br />
		   				<font class="font11">寄送至：<input type="text" class="input3" /> 
		   				          收货人：<input type="text" class="input3"/> 
		   				</font>
		   			</div>
		   			<div class="botdiv_02">
		   				
		   				<input type="submit" value="提交订单" class="input4" />
		   			</div>
		   		</div>
		   	</div>
		   	
		   	<!--右边div-->
		   	<div class="rightdiv"></div>
		</div>
		</form>
	</body>
</html>
