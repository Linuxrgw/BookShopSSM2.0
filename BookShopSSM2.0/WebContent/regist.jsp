<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" href="css/login.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script>
		    //验证用户名
			function checkUserName(){
				//获取用户名输入框输入的内容
				var username = document.getElementById("username").value;
				//获取错误提示框的对象
				var nameError = document.getElementById("nameError"); 
				//敏感字数组
				var mgz =["习大大","马云"];
				//非空判断
				if(username == null ||username == undefined || username == ""){
					nameError.innerHTML="用户名不能为空";
					nameError.style.color = "red";
					return false;
				}
				//判断是否有敏感字
				for(var i in mgz){
					if(username.indexOf(mgz[i])!=-1){
						nameError.innerHTML="输入的内容不能出现敏感字";
					    nameError.style.color = "red";
						return false;
					}
				}
				
				//此用户名是否已经被注册
				var flag = false;
				$.ajax({
					type:"post",
					url:"checkUserName.action",
					data:{"username":username},
					async: false,
					success:function(data){
						
						if(data > 0){
						   nameError.innerHTML="此用户名已经注册";
						   nameError.style.color = "red";
						   flag = false;
						}else{
						   flag = true;
						}
					}
					
				});
				
				if(!flag){
					return false;
				}
				
				//如果有敏感字或者为空，则显示用户名可用
				nameError.innerHTML="用户名可用";
				nameError.style.color = "green";
			}
			
			//验证密码
			function checkPwd(){
				var pwd = document.getElementById("pwd").value;
				var pwdError = document.getElementById("pwdError");
				//密码做非空判断
				if(pwd==null||pwd=="" || pwd == undefined){
					pwdError.innerHTML="密码不能为空";
				    pwdError.style.color = "red";
					return false;
				}
				
				//密码只能是6-16位
				if(pwd.length<6 || pwd.length>16){
					pwdError.innerHTML="密码只能在6-16位之间";
				    pwdError.style.color = "red";
					return false;
				}
				
				pwdError.innerHTML="密码符合格式";
				pwdError.style.color = "green";
			}
			
			//验证重复密码
			function checkRepwd(){
				var pwd = document.getElementById("pwd").value;
				var repwd = document.getElementById("repwd").value;
				var repwdError = document.getElementById("repwdError");
				//判断密码和重复密码是否一致
				if(pwd != repwd){
					repwdError.innerHTML="密码和重复密码必须一致";
				    repwdError.style.color = "red";
					return false;
				}
				repwdError.innerHTML="通过验证";
				repwdError.style.color = "green";
			}
			
			//手机号不能为空，并且只能是数字
			function phoneCheck(){
				var phone = document.getElementById("phone").value;
				var phoneError = document.getElementById("phoneError");
				//判断手机号不能为空
				if(phone == null || phone == undefined || phone == ""){
					phoneError.innerHTML="手机号码不能为空";
				    phoneError.style.color = "red";
					return false;
				}
				//判断手机号只能是11位
				if(phone.length!=11){
				    phoneError.innerHTML="手机号码只能是11位";
				    phoneError.style.color = "red";
					return false;	
				}
				//判断手机号只能是数字
				if(isNaN(phone)){
					phoneError.innerHTML="手机号码只能输入数字";
				    phoneError.style.color = "red";
					return false;
				}
				phoneError.innerHTML="手机号码正确";
				phoneError.style.color = "green";
			}
			
			/*提交时候的检查*/
			function check(){
				//当有一个方法为false，结果就为false
				if(checkUserName()== false || checkPwd()==false || checkRepwd() == false ||phoneCheck()==false){
					return false;
				}
			}
		</script>
	</head>
	<body>
		<!--总体-->
		<div class="login_total">
			
			<!--头部-->
			<div class="login_top">
				<dl>
					<dd class="dd01"><img src="img/logo.jpg"/></dd>
					<dd class="dd02">欢迎注册</dd>
					<dd class="dd03" ><font size="2">已有账号？请登入</font></dd>
				</dl>
			</div>
			
			<!--中间部分-->
			<div class="regist_center" align="center">
				<!--左侧  注册-->
				<div class="regist_left" align="center">
					<form action="${pageContext.request.contextPath }/regist.action" method="post" onsubmit="return check()">
						<table align="center">
							<tr>
								<td align="center">
									<div>
										<span>用&nbsp;&nbsp;户&nbsp;&nbsp;名</span>
		                                <input id="username" type="text" name="username" placeholder=" 您的账户名和登入名" onblur="checkUserName()"/>
		                            </div>
		                            <p align="right" id="nameError"></p>
		                            <br />
								</td>
							</tr>
							<tr>
								<td align="center">
									<div>
										<span>设置密码&nbsp;</span>
		                                <input id="pwd" type="text" name="password" placeholder="建议至少使用两种字符组成" onchange="checkPwd()"/>
		                            </div>
		                            <p align="right" id="pwdError"></p>
		                            <br />
								</td>
							</tr>
							<tr>
								<td align="center">
									<div>
										<span>确认密码&nbsp;</span>
		                                <input id="repwd" type="text" name="repwd" placeholder="请再次输入密码" onchange="checkRepwd()"/>
		                            </div>
		                            <p align="right" id="repwdError"></p>
		                            <br />
								</td>
							</tr>
							<tr>
								<td align="center">
									<div>
										 <span>手机号码&nbsp;</span>
		                                <input id="phone" type="text" name="phone" placeholder="建议使用常用手机号" onchange="phoneCheck()"/>
		                            </div>
		                            <p align="right" id="phoneError"></p>
		                            <br />
								</td>
							</tr>
							<tr>
								<td align="center">
									<div>
										<span>手机验证码</span>
		                                <input style="width: 150px;" type="text" name="yzm" placeholder="请输入手机验证码"/>
		                                <input type="button" value="获取验证码">
		                            </div>
		                            <br />
								</td>
							</tr>
							<tr>
								<td> 
									<input type="submit"  value="立即注册" >
								</td>
							</tr>
						</table>
					</form>
				</div>
				<!--右侧-->
				<div class="regist_right">
				    <table align="left">
				    	<tr>
				    		<td>
				    			<img src="img/5666.jpg" />
				    		</td>
				    		<td>企业用户注册</td>
				    	</tr>
				    	<tr>
				    		<td colspan="2">
				    			<br />
				    			<hr color="#EEEEEE" />
				    			<br />
				    		</td>
				    	</tr>
				    	<tr>
				    		<td>
				    			<img src="img/7888.jpg" />
				    		</td>
				    		<td>INTERNATIONAL<br>CUSTOMER</td>
				    	</tr>
				    </table>
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

