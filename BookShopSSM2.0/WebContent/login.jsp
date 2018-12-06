<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8">
		<title>登入</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript">
		   //验证用户名和密码不能为空，密码是6-16位
		   function  check() {
			  var username  = $("#username").val(); //获取输入的用户名
			  var pwd = $("#pwd").val(); //获取输入的密码
			  var error1 = $("#error1"); //获取错误框的对象
			  //用户名非空验证
			  if(username == null || username == "" || username==undefined){
				  error1.text("用户名不能为空");
				  return false;
			  }
			  //密码非空验证
			  if(pwd == null || pwd == "" || pwd==undefined){
				  error1.text("密码不能为空");
				  return false; 
			  }
			  //密码长度验证
			  if(pwd.length < 6 || pwd.length > 16){
				  error1.text("密码长度只能是6-16位");
				  return false; 
			  }
			  error1.text("");
			  return true;
		  }
		</script>
	</head>
	<body>
	
	  <%--  <% String username = "";
	      String pwd = "";
	      Cookie[] cookies =  request.getCookies(); //接收服务端发送的所有cookie数据
	      //遍历cookie信息
	      for(Cookie cookie : cookies){
	    	  //判断获取Cookie的名称中有没有username ，如果有就取值
	    	 if("username".equals(cookie.getName())){
	    		 username = cookie.getValue();  //获取cookie的值
	    	 } 
	    	 if("pwd".equals(cookie.getName())){
	    		 pwd = cookie.getValue();
	    	 }
	      }
	      
	      //判断账户名和密码有没有从cookie里面取出，如果取出来就直接请求转发到登入页面
	      if(!"".equals(username)&&!"".equals(pwd)){
	    	  request.getRequestDispatcher("LoginSvl?username="+username+"&pwd="+pwd).forward(request, response);
	      }
	      
	   %> --%>
	
		<!--总体-->
		<div class="login_total">
			
			<!--头部-->
            <div class="login_top">
				<dl>
					<dd class="dd01"><img src="${pageContext.request.contextPath}/img/logo.jpg"/></dd>
					<dd class="dd02">欢迎登录</dd>
					<dd class="dd03" ><font size="2">登陆页面，调查问卷</font></dd>
				</dl>
				<p align="center">据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号验证！
				新版《京东隐私政策》已上线，将要有利于保护您的个人隐私。</p>
			</div>
			
			<!--中间部分-->
			<div class="login_center" align="center">
				<div>
				<!--登入框-->
				<form action="${pageContext.request.contextPath}/login.action" method="post" onsubmit="return check()">
		            <table>
			            <tr>
				            <td class="td1" colspan="2" align="center">
				                <font size="1">京东不会以任何理由要求您转账汇款，谨防诈骗。</font>
			                </td>
			            </tr>
			            <tr>
			            	<td class="a" align="center">扫码登录<br/><br/></td>
			            	<td class="a" align="center">账户登录<br/><br/></td>
			            </tr>
			            <tr>
			               <td style="color:red;padding-left: 25px;" colspan="2">
			                  <font id="error1">${msg}</font>
			               </td>
			            </tr>
			            <tr>
			            	<td colspan="2" align="center">
			            		<div align="center">
			            			<img src="${pageContext.request.contextPath}/img/username.jpg"/>
                                    <input id="username" type="text" name="username" placeholder="邮箱/用户名/已验证手机" />
			            		</div>
			                </td>
			            </tr>
			            <tr>
			            	<td colspan="2" align="center">
			            		<div align="center">
			            		    <img src="${pageContext.request.contextPath}/img/pwd.jpg" />
				                    <input id="pwd" type="password" name="pwd" placeholder="密码">
				                </div>
			                </td>
			            </tr>
			            <tr>
			            	<td colspan="2" align="right">
			            		<font style="padding-right: 25px;" size="1" color="#bdbdbd">忘记密码</font>
			            	</td>
			            </tr>
			            <tr>
			            	<td colspan="2" align="center">
				                <input type="submit"name="sex"value="登录"style="width:240px;height:35px;background-color:red;border:none;color:white ;">
			                </td>
			            </tr>
			            <tr>
			            	<td colspan="2" align="right" >
			            		<a href="regist.jsp">立即注册</a>
			            	</td>
			            </tr>	
				    </table>
		        </form>
		    </div>
			</div>
			<!--尾部-->
			<div class="login_footer" align="center">
				<br />
				<font>关于我们 | 联系我们 | 人才招聘 | 商家入驻 | 广告服务 | 手机京东 | 友情链接 | 销售联盟 | 京东社区 | 京东公益 | English Site</font>
				<br/><br />
				<font>Copynght &copy; 2004 2018京东JD.com版权所有</font>
			</div>
		</div>
	</body>
</html>

