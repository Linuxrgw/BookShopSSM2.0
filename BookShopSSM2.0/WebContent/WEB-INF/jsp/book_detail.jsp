<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>图书详情页</title>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/book_detail.css"/>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
			<script type="text/javascript">
			<!-- 			添加购物车的ajax请求 -->
			function addCarShop(bookid,userid){
				$.ajax({
					type:"post", //发送请求的提交方式，默认是get
					url:"addCarShop.action", //转发的地址
					data:{"bookid":bookid,"userid":userid}, //请求转发的内容
					datatype:"json",
					success:function(data){//会在会话完成，返回成功是调用
						 alert(data);
				    	 if(data == true){
				    	   alert("添加购物车成功");
				          }else{
				        	alert("添加失败");
				          }
						
					}
				});
			}
			</script>

	</head>
	<body>
		<div style="width:100%;height: 100%;">
			<!--头部-->
			<div class="div_top">
				<!--第一行，标题栏-->
			   <p align="center">您好,请登入&nbsp;&nbsp;
			   <a class="a1">免费注册</a>&nbsp;&nbsp;
			  <a class="a2" href="myorder.jsp">我的订单</a>&nbsp;&nbsp;
			   <a class="a2" href="shop_car.jsp">我的购物车</a>&nbsp;&nbsp;
			   <a class="a2">后台</a>
			   </p>	
			   
			   <!--第二行，搜索框-->
			   <div class="search">
			   	<form>
			   	<table style="margin-left: 200px;" align="center">
			   		<tr>
			   			<td>	 
			   				<img style="padding: 20px;" src="img/logo.jpg" />
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
			<!--中间部分-->
			<div class="div_detail">
			  <div class="detail">
			  	<!--左侧图片-->
			  	 <div class="detail_left">
			  	 	<img src="img/book05.jpg"style="width:95% ;margin-left:7px;"/>
						<table style="width: 100%;height:50px ;">
							<tr>
								<td>
						            <font color="#FFD900">&nbsp;&nbsp;★</font>
						            <a href="#"class="f">分享</a>
			                    	<font color="#FFD900">❤</font>
			                    	<a href="#"class="f">关注商品</a>
			                    </td>
			                    <td align="right">
			                    	<a href=""class="f">举报&nbsp;&nbsp;</a>
			                    </td>
						    </tr>
						</table>
			  	 </div>
			  	 <!--右侧内容-->
			  	 <div class="detail_right">
			  	 	<!--第一部分的div-->
			  	 	<div class="right_one">
						<table>
							<tr>
								<td>【满49减15元】  ${book.author}${book.bname}  文学小说</td>
							</tr>
							<tr>
								<td>
									<a href="#">踏春好时节 满49减15 满99减30</a>
								</td>
							</tr>
							<tr>
								<td>
								   <p>[日]<font color="blue">${book.author} </font>著</p>
								</td>
							</tr>
						</table>
					</div>
					<div class="right_two">
						<table style="height:100%;">
							<tr>
								<td class="td1">
									京&nbsp;东&nbsp;价：
								</td>
								<td>
									<font color="#e33942"face="黑体"size="5">¥${book.price}</font>
									[4.8折]
								</td>
							</tr>
							<tr>
								<td class="td1">
									促销信息：
								</td>
								<td>
									<button>限购</button>
									<a href="#">仅购买1件时享受单件价¥18.80，超出数量以结算价为准，仅限购买一次</a>
								</td>
							</tr>
							<tr>
								<td class="td1">
									优&nbsp;惠&nbsp;卷：
								</td>
								<td>
									<button>满98减5</button>
								</td>
							</tr>
						</table>
					</div>
					<div class="right_three">
						<table>
							<tr>
								<td class="td1">配&nbsp;送&nbsp;至：</td>
								<td>
									<select name="">
										<option value="7">北京朝阳三环以内</option>
										<option value="8">北京西城二环以内</option>
										<option value="9">北京昌平五环以外</option>
									</select>
									<font>有货</font>
									<font class="td1">店铺单笔订单不满58元，在线支付运费5元</font>									</td>
							</tr>
							<tr>
								<td class="td1">服&nbsp;&nbsp;&nbsp;&nbsp;务：</td>
								<td>
									<font class="td1">由
										<a href="#">淘书网专卖店</a>
										负责发货，并提供售后服务，现在至明白16：00前完成下单，预计4月2日22：00前发货
									</font>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<button onclick ="addCarShop(${book.bookid},${sessionScope.userid})">加入购物车</button>
								</td>
							</tr>
							<tr>
								<td colspan="2"class="td1">
									温馨提示：支持7天无理由退货
								</td>
							</tr>
						</table>
					</div>
				</div>
			   </div>
			  </div>	
			</div>
			<!--脚部-->
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
