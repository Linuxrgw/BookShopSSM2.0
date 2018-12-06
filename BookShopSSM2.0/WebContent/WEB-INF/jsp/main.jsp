<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8" />
		<title>京东主页面</title>
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/main.css" />
	</head>
	<body>
<%-- 		<%=application.getInitParameter("level")%><br> --%>

		
		<div class="total">
			<!--头部-->
			<div class="div_top">
				<!--第一行，标题栏-->
				<c:if test="${sessionScope.username eq null }">
					<p align="center">您好,请登入&nbsp;&nbsp;
			   		<a class="a1">免费注册</a>&nbsp;&nbsp;
				</c:if>
				<c:if test="${sessionScope.username ne null }">
					<p align="center">${username}&nbsp;&nbsp;
				</c:if>
				
			   
			   <a class="a2" href="myorder.jsp">我的订单</a>&nbsp;&nbsp;
			   <a class="a2" href="myCarShop.action">我的购物车</a>&nbsp;&nbsp;
			   <a class="a2">后台</a>
			   <a class="a2" href="#">访问人次：${applicationScope.count}</a>
			   </p>	
			   
			   <!--第二行，搜索框-->
			   <div class="search">
			   	<form>
			   	<table>
			   		<tr>
			   			<td>	 
			   				<img style="padding: 20px;" src="img/logo.jpg" />
			   			</td>
			   			<td>
			   				<font>图书</font>
			   			</td>
			   			<td>
			   				<select>
			   	 	           <option>全部分类</option>
			   	 	           <option>计算机图书</option>
			   	 	           <option>文学类</option>
			   	            </select>
			   			</td>
			   			<td>
			   				<div class="search_style">
			   				<input type="text" placeholder="人民文学" />
			   			    </div>
			   			</td>
			   			<td>
			   				<input class="input02" type="submit" value="搜索" />
			   			</td>
			   			<td>
			   				<div class="search_car">
			   					<table>
			   						<tr>
			   							<td>
			   								<img src="img/shopcar.jpg" />
			   							</td>
			   							<td>
			   								<span>我的购物车</span>
			   							</td>
			   						</tr>
			   					</table>
			   				</div>
			   			</td>
			   		</tr>
			   	</table>
			   	</form>
			   </div>
			   <!--第三行，导航栏-->
			   	<table class="navigation">
			   		<tr>
			   			<td class="td1">图书分类</td>
			   			<td class="td2 change" style="padding-left: 20px;">首页&nbsp;&nbsp;</td>
			   			<td class="td2 change">预售&nbsp;&nbsp;	</td>
			   			<td class="td2 change">电子书</td>
			   			<td class="td2 change">陪伴计划</td>
			   			<td class="td2 change">特色书店</td>
			   		</tr>
			   	</table>
			</div>
			
			<!--广告图片-->
			<div class="div_banner">
				<img src="img/background.jpg" />
			</div>
			
			<!--中间 大众读物-->
			<div class="div_center">
				<!--大众读物文字-->
				<div class="div01" align="center">
					<div>
						<span>大众读物</span>
					</div>
				</div>
				<!--中间导航栏-->
				<table class="table01" cellspacing="0">
					<tr>
						<td class="td3">大众热门</td>
						<td class="td3">文学小说</td>
						<td class="td3">经管励志</td>
						<td class="td3">原版书&nbsp;</td>
					    <td class="td3">期刊杂志</td>
					</tr>
				</table>
				<!--图书列表-->
				<table style="width: 100%;height: 100%;" class="booklist" cellspacing="8px">
				<c:forEach var="book" items="${requestScope.books}" varStatus="num">
				<c:if test="${num.count eq 1 ||num.count%5 eq 1}">
					<tr>
					</c:if>
						<td>
							<div>
								<img src="${pageContext.request.contextPath}/upload/${book.imgpath }" /><br />
								<span>${book.bname}</span><br />
								<span style="font-size: 15px;color: #100E00;">京东价： ￥${book.price }</span><br />
								<a href="${pageContext.request.contextPath}/bookDeatil.action?bookid=${book.bookid}"><button>立即购买</button></a>
							</div>
						</td>
					<c:if test="${num.count eq 5 ||num.count%5 eq 0}">
					</tr>
					</c:if>
					</c:forEach>
				</table>
			</div>
			
				
			<!--尾部-->
			<div class="div_foot">
				<!--尾部第一行-->
				<div class="foot_one" align="center">
					<table align="center">
						<tr>
							<td>
								<img src="img/bottom_img01.jpg" align="center" />
							</td>
							<td>
								<font>品类齐全&nbsp;轻松购物</font>
							</td>
							
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;	
								<img src="img/bottom_img02.jpg" align="center" />
							</td>
							<td>
								<font>多仓直发&nbsp;极速配送</font>
							</td>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="img/bottom_img03.jpg" align="center" />
							</td>
							<td>
								<font>正品行货&nbsp;精致服务</font>
							</td>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="img/bottom_img04.jpg" align="center" />
							</td>
							<td>
								<font>天天低价&nbsp;畅选无忧</font>
							</td>
						</tr>
					</table>
				</div>
			    <!--尾部第二部分-->
			    <div class="foot_two" align="center">
			      <table >
			    	<tr>
			    		<td>
			    			<font class="font01">购物指南</font><br /><br />
			    			<font>购物流程</font><br />
			    			<font>会员介绍</font><br />
			    			<font>生活旅行团购</font><br />
			    			<font>常见问题</font><br />
			    			<font>大家电</font><br />
			    			<font>联系客服</font><br />
			    		</td>
			    		<td>
			    			<font class="font01">配货方式</font><br /><br />
			    			<font>上门自提</font><br />
			    			<font>211限时达</font><br />
			    			<font>配送服务查询</font><br />
			    			<font>配送费收取标准</font><br />
			    			<font>海外配送</font><br />
			    			<font></font><br />
			    		</td>
			    		<td>
			    			<font class="font01">支付方式</font><br /><br />
			    			<font>货到付款</font><br />
			    			<font>在线支付</font><br />
			    			<font>分期付款</font><br />
			    			<font>邮局汇款</font><br />
			    			<font>公司转账</font><br />
			    			<font></font><br />
			    		</td>
			    		<td>
			    			<font class="font01">售后服务</font><br /><br />
			    			<font>售后政策</font><br />
			    			<font>价格保护</font><br />
			    			<font>退款说明</font><br />
			    			<font>返修/退换货</font><br />
			    			<font>取消订单</font><br />
			    			<font></font><br />
			    		</td>
			    		<td>
			    			<font class="font01">特色服务</font><br /><br />
			    			<font>夺宝岛</font><br />
			    			<font>diy装机</font><br />
			    			<font>延保服务</font><br />
			    			<font>京东E卡</font><br />
			    			<font>京东通信</font><br />
			    			<font>京东JD+</font><br />
			    		</td>
			    	</tr>
			    	<tr>
			    		<td colspan="5">
			    			<hr style="margin-top:20px;width: 100%;color: #eeeeee;" />
			    		</td>
			    	</tr>
			      </table>
			    </div>
			    <!--尾部第三部分-->
			    <p class="p1" align="center">关于我们 | 联系我们 | 联系客服 | 合作招商 | 商家帮助 | 营销中心 | 手机京东 | 友情链接 | 销售联盟 | 京东社区 | 风险监测 | 隐私政策 | 京东公益 | English Site | Media & IR</p>
			    <p class="p2" align="center">
			    	<img style="width: 15px;height: 15px;" src="img/bottom_img05.jpg" />
			    		京公网安备 11000002000088号  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-经营性-2014-0008  |  新出发京零 字第大120007号
			    </p>
			    <p class="p2" align="center">
			    	互联网出版许可证编号新出网证(京)字150号  |  出版物经营许可证  |  网络文化经营许可证京网文[2014]2148-348号  |  违法和不良信息举报电话：4006561155
			    </p>
			    <p class="p2" align="center">
			    	Copyright © 2004-2018  京东JD.com 版权所有  |  消费者维权热线：4006067733    经营证照
			    </p>
			    <p class="p2" align="center">
			    	京东旗下网站：京东支付  |  京东云
			    </p>
			    <p class="p3" align="center">
			    	<img src="img/bottom_img06.jpg" />
			    	<img src="img/bottom_img07.jpg" />
			    	<img src="img/bottom_img08.jpg" />
			    	<img src="img/bottom_img09.jpg" />
			    	<img src="img/bottom_img10.jpg" />
			    	<img src="img/bottom_img11.jpg" />
			    </p>
			</div>
		</div>
	</body>
</html>
