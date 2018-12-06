<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>我的购物车</title>
		<link rel="stylesheet" href="css/shopcar.css" />
	</head>
	<body>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	 <script type="text/javascript">
           //实时更新总计金额
	       function aa() { 
	    	  var arr =[];//定义一个数组  
	          $('input[name="bookids"]:checked').each(function(){//遍历每一个名字为bookids的复选框，其中选中的执行函数  
	             arr.push($(this).val());//将选中的值添加到数组arr中  
	          });
	    	  
	    	  $.ajax({
	    		  url:"${pageContext.request.contextPath}/test.action",
	    		  type:"get",
				  data:{bookids:arr},
				  dataType:"json", //返回值数据的类型是json类型
				  traditional: true,//这里设置为true,当传递数组时，会在我们的数组名称后自动加上”[]”，所以后台接不到。
				  success:function(msg){
					document.getElementById("total").innerHTML=msg;  //设置金额
				  }
	    	  });
		}
	 </script>
		<div class="total">
			<!--第一行-->
			<div class="div_one">
				<img src="img/logo.jpg"/>
				<h2 style="">购物车</h2>
				
				<div>
					<button>搜索</button>
					<input type="text" placeholder="自营"/>
				</div>
			</div>
			<!--第二行-->
			<div class="div_two">
				<buttton class="k">全部商品</buttton>
				&nbsp;&nbsp;&nbsp;
				<buttton class="k">京东书店</buttton>
				<select name="">
					<option value="11">朝阳区三环以内</option>
					<option value="22">西城区二环以内</option>
					<option value="33">昌平区六环以外</option>
				</select>
				<font>配送至：</font>
			</div>
			
			<!--第三行-->
			<div class="div_three">
				<table align="center" cellspacing="0">
					<tr style="background-color: #f3f3f3;">
						<td style="width:40%;">
							<font>&nbsp;&nbsp;商品</font>
						</td>
						<td style="width:10%;">
							<font>单价</font>
						</td>
						<td style="width:10%;">
							<font>数量</font>
						</td>
						<td style="width:10%;">
							<font>小计</font>
						</td>
						<td style="width:10%;">
							<font>操作</font>
						</td>
					</tr>
				</table>
			</div>
			
			<!--第四行 -->
			<div class="div_four">
				<!--订单详情-->
			<form action="${pageContext.request.contextPath}/checkOut.action" method="get">
				<table class="table01">
				<c:forEach var="cartshop" items="${requestScope.list}">
					<tr>
						<td style="width:40%;">
							<input id="bookids" type="checkbox"  name="bookids" value="${cartshop.bookid}"/>
							<img src="${pageContext.request.contextPath}/upload/${cartshop.imgpath}"/>
							<font style="float: left;">【4本24元】包邮${cartshop.bname }+${cartshop.bname }</font><br />
							<a href="#">支持7天无理由退货</a>
						</td>	
						<td style="width:10%;">
							<font>${cartshop.price}</font><br />
						</td>
						<td style="width:10%;">
							<div>
								<button>-</button>
								<font>${cartshop.count}</font>
								<button>+</button>
							</div>
						</td>
						<td style="width:10%;">
							<font>${cartshop.price * cartshop.count}</font>
						</td>
						<td style="width:10%;">
							<a href=""class="l">删除</a><br />
							<a href=""class="l">移到我的关注</a><br />
							<a href=""class="l">加到我的关注</a>
						</td>
					</tr>
				   <c:set var="total" value="${total+cartshop.price*cartshop.count}" ></c:set> 
				  </c:forEach>
				</table>
				
				<!--结算-->
				<table class="table02">
					<tr>
						<td>
							<font class="font01" id="total">${total}</font>
							<!-- <font class="font01" id="total">0</font> -->
						    <font class="font02">总价：</font>
						</td>
						<td rowspan="2"style="width:120px;">
						<button>去结算</button>
                        </td>
					</tr>
				</table>
				
			</form>
			</div>
		</div>
	</body>
</html>
