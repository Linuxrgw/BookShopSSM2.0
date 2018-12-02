<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8"/>
    <title>个人房屋出租_房屋出租信息_公寓出租-蛋壳公寓官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name='keywords' content='月租,年租,租房,租期,蛋壳公寓,房租'>
    <meta name="description"
          content="让租房变得简单和快乐"/>
    <link rel="icon" type="image/x-icon" href="css/favicon.ico" >
    <!-- Set render engine for multi engine browser -->
    <meta name="renderer" content="webkit">
    <!-- Disable Baidu Siteapp -->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link media="all" type="text/css" rel="stylesheet" href="css/bootstrap-ec3bb52a00.min.css" >

<!--     <link media="all" type="text/css" rel="stylesheet" href="css/swiper-0b941af5db.min.css" > -->

    <link media="all" type="text/css" rel="stylesheet" href="css/common-4ce4e00253.css" >


<!--     <script src="js/jquery-888d4551b8.js" ></script> -->

<!--     <script src="js/bootstrap-5869c96cc8.min.js" ></script> -->
    
<!--     <script src="js/swiper-3-cd2bffb7f2.3.1.min.js" ></script> -->

<!--     <script src="js/md5-ea27c6f755.min.js" ></script> -->

<!--     <script src="js/city-b83380172d.js" ></script> -->

<!--     <script src="js/public-0fd418fb37.js" ></script> -->

<!--     <script src="js/sa-56cab3188f.js" ></script> -->

<!--     <script src="js/sa-method-b38d9d9979.js" ></script> -->

        <link media="all" type="text/css" rel="stylesheet" href="css/login-4e8061fd30.css" >
<!--     <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script> -->

<!--     <script src="js/poup-09013e9343.js" ></script> -->
        <script type="text/javascript" src="js/jquery.min.js"></script>



        <script type="text/javascript">
        //获取验证码 
        var InterValObj; //控制时间
        var count = 30; //函数间隔时间
        var curCount;//当前剩余秒数
        var sms="";
       
        function sendMessage(){
        	var phone = $("#phone").val();
        	if(phone != null && phone != ""){
        		if(phone.length==11){
        	curCount =count;
            $("#btn").attr("disabled", "true");//按钮变灰不可点
        	$("#btn").val(curCount+"秒后可重新发送");
        	InterValObj = window.setInterval(SetRemainTime,1000);  //周期性执行函数，间隔1000毫秒    返回值：定时器的id值	
        	 $.ajax({
                 url:"${pageContext.request.contextPath}/SendSmsSvl",
                 type:"post",
                 data:{"phone":phone},
                 success:function(result){
//                  	alert(result);
                     sms=result;
                 }
             });
//         	 $("#lo").click(function(){
//         		 alert("点击登录");
//         	        var code=$("#code").val();
//         	        if(code=="" || code==null){
//         	            alert("请输入验证码");
//         	        }else{
//         	            if(sms==code){
//         	                window.location.href="user_center.jsp";
//         	            }else{
//         	                alert("验证码错误");

//         	            };
//         	        };

//         	    });
        		}else{
        			alert("请输入正确11位手机号");
        		    return false;}
        	}else{
        		alert("请输入手机号");
        		return false;
        	}
     }
        function SetRemainTime(){
        	if(curCount == 0){
        		window.clearInterval(InterValObj);  //停止计时器
                $("#btn").removeAttr("disabled");//启用按钮,从被选元素中移除属性 
        		$("#btn").val("重新发送验证码");
        	}else{
        		curCount--;
        		$("#btn").val(curCount+"秒后可重新发送");
        	}
        }
     
        </script>
        
        <script type="text/javascript">
        function checkCode(){
			var phone = $("#phone").val();
//         	alert(phone);
            var code=$("#code").val();
           
            
	        if(code=="" || code==null){
	            alert("请输入验证码");
	        }else{
	            if(sms==code){
	                window.location.href="LoginSvl?phone="+phone;
	            }else{
	                alert("验证码错误");
	            }
	        }
	        }
        </script>


    </head>


<!--[if lte IE 8]>
<script src="html5shiv-0ce8f35589.js" ></script>

<script src="respond-972b9d5576.min.js" ></script>

<![endif]-->

<!--[if lt IE 8]>
<div class="alert-danger text-center">您正在使用<strong>过时</strong>的浏览器，本网站不能很好的支持。
    <a href="javascript:if(confirm(%27http://browser.qq.com/  \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://browser.qq.com/%27" >立即使用最新QQ浏览器</a> 获得更好的使用体验！
</div>
<![endif]-->

<body>
<input type="hidden" value="400-110-1027" id="zjhPhoneNumber">
<input type="hidden" value="bj" name="website-city-code">
<input type="hidden" value="首页" name="website-page-name">
<div class="danke_header" id="topbar" data-spy="affix"  data-offset-top="32">
    <div class="wibsite-center header-center">
        <div class="logo fl">
            <a href="index.jsp" ><img src="img/public-20180112-FgKd1DNNCyC_3Jq8dqbMIX7oCLCA.png" title="蛋壳公寓官网" alt="蛋壳公寓官网"></a>
            <h2 style="display: none;">蛋壳公寓官网，租房，整租，合租</h2>
        </div>
        <div class="nav-help fl"></div>
        <div class="fl dkcity hd-sprite-ab">
            <select id="dropdownMenu">
            <option>北京</option>
            <option>深圳</option>
            <option>上海</option>
            <option>杭州</option>
            <option>天津</option>
            <option>武汉</option>
            <option>南京</option>
            <option>广州</option>
            <option>成都</option>
            </select>
<!--             <span id="dropdownMenu1" data-toggle="dropdown"><i></i>北京</span> -->
<!--             <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1"> -->
<!--                                     <li><a href="javascript:void(0)" rel="bj">北京市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="sz">深圳市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="sh">上海市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="hz">杭州市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="tj">天津市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="wh">武汉市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="nj">南京市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="gz">广州市</a></li> -->
<!--                                     <li><a href="javascript:void(0)" rel="cd">成都市</a></li> -->
<!--                             </ul> -->
        </div>
        <div class="nav fl">
            <a href="index.jsp" data-subject="首页">首页</a>
            <a href="bj.jsp" data-subject="找房">找房</a>
            <a href="bj-rent_type=joint_rent.htm" data-subject="合租">合租</a>
            <a href="bj-rent_type=entire_rent.htm" data-subject="整租">整租</a>
            <a href="bj-rent_cycle=1.htm" data-subject="月租" class="nav-owner">
                月租
                <img src="img/public-20181023-FrvoseweQ_uceNX0PxMSF5RVsd6M.png" alt="业主图标" class="owner-gray-icon">
            </a>
            <a href="yezhu.jsp" data-subject="业主">业主</a>
            <a href="aboutus.jsp" data-subject="关于">关于</a>
        </div>
                    <a class="dklogin fr" id="lo" href="login.jsp" >登录</a>
                <div class="dkphone fr">
            <div class="serphoen fl hd-sprite-ab">
                <label></label>
                <span>服务时间：09:00 ~ 21:00</span>
            </div>
        </div>
    </div>
</div>
<div class="right-fixed">
    <div class="fixed-wrapper">
        <div class="scroll-to-top">
            <a href="javascript:void(0)" target="_parent"></a>
        </div>
        <div class="scroll-to-app">
            <a href="javascript:void(0)"></a>
            <div>
                <span></span>
                <img src="img/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH.png" style="width: 95px;height: 95px" alt="app下载">
                <p>扫描下载蛋壳APP</p>
            </div>
        </div>
        <div class="scroll-to-phone">
            <a href="javascript:void(0)"></a>
            <div>
                <img src="img/public-20180519-Fq8UiGCwbNXfmt4u4-DDZLkzBEQN.png" alt="客服电话图片">
                <span>400-110-1027</span>
            </div>
        </div>
        <div class="scroll-to-xcx">
            <a href="javascript:void(0)"></a>
            <div>
                <span class="xcx-close"></span>
                <span></span>
                <img src="img/public-20180606-Fma_F2IgLSK0VW-TZVo5UokQpm6w.jpg" style="width:95px;height:95px" alt="app下载">
                <p>小程序找房更容易</p>
            </div>
        </div>
    </div>
</div>
<div class="website-main">
        <div class="p-login">
        <div class="login-wrap">
            <div class="login-banner w1035">
                <!--form-->
                <div class="login-form">
                    <!--model name-->
                    <h3 class="login-name"><span>登录</span></h3>
                    <!--form list-->
                    <div class="login-ipt-box js-login-box">
                        <div class="login-ipt type-phone">
                            <input class="ipt-phone js-phone" id="phone" name="phone" data-limit="number" autocomplete="on" type="text"
                                   maxlength="11" oninput placeholder="请输入手机号"/>
                            
                        </div>
                        <div class="login-ipt code-line type-code">
                            <input class="ipt-code " id="code" data-limit="number" type="text" placeholder="请输入验证码"/>
                            <input class="code-btn" id="btn" type="button" value="获取验证码" onclick="sendMessage()" />
                        </div>
                        <p class="ipt-err js-ipt-err"></p>
                    </div>
                    <!--form list end-->
                    <!--条款-->
                    <div class="login-clause rel">
                        <label>
                            <input class="create js-state" checked="checked" type="checkbox" value=""/>
                            我已阅读并同意《<a target="_blank" href="javascript:if(confirm(%27http://www.dankegongyu.com/zhuanti/user-privacy  \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.dankegongyu.com/zhuanti/user-privacy%27" >用户使用条款与隐私声明</a>》
                        </label>
                        <p class="clause-err abs">请勾选租客协议</p>
                    </div>
                    <!--条款 end-->
                    <div class="login-btn">

<!--                         <a class="js-login-btn" id="lo" onclick="checkCode()">登录</a> -->

                        <input class="js-login-btn" id="dl" type="button" value="登录 " onclick="checkCode()" />
<!--                         <input class="js-login-btn" id="lo" onclick="checkCode()" type="button" value="登录"/> -->

<!-- 							<button type="button" class="js-login-btn" id="lo">登录</button> -->
                    </div>
                </div>
                <!--form end-->
            </div>
            <!--banner end-->
        </div>
        <!--wrap end-->
    </div>
</div>
<div class="footer">
    <div class="website-help">
        <div class="wibsite-center">
            <div class="website-f-list">
                <span>用户帮助</span>
                <p><a href="notice.jsp" >入住指南</a></p>
                <p><a href="20180111lifeHacks.htm" target="_blank">生活常识</a></p>
                <p><a href="problem.jsp" target="_blank">租房问题</a></p>
            </div>
            <div class="website-f-list">
                <span>商务合作</span>
                <p><a href="20171219Styleforum.htm" target="_blank">商务合作</a></p>
            </div>
            <div class="website-f-list">
                <span>公司信息</span>
                <p><a href="aboutus.jsp" target="_blank">关于蛋壳</a></p>
                <p><a href="contact.jsp" target="_blank">联系蛋壳</a></p>
                <p><a href="join.jsp" target="_blank">加入蛋壳</a></p>
            </div>
            <div class="website-f-list">
                <span>客服热线</span>
                <p>4001-551-551</p>
                <p class="time">工作日 09:00-21:00</p>
            </div>
            <div class="website-f-right">
                <div class="website-f-pic">
                    <img src="img/public-20180702-FlfqqYRpjYyFKdRUiJMD8b6RO02m.png" title="下载蛋壳公寓APP" alt="下载蛋壳公寓APP">
                    <p>扫码小程序找房</p>
                </div>
                <div class="website-f-pic">
                    <img src="img/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH.png" style="padding:0;" title="下载蛋壳公寓APP" alt="下载蛋壳公寓APP">
                    <p>下载蛋壳公寓APP</p>
                </div>
                <div class="website-f-pic">
                    <img src="img/public-20180104-FuHnSFKo71wRSuJSK4Z0pt6l76zh.png" title="关注蛋壳公寓官方微信" alt="关注蛋壳公寓官方微信">
                    <p>关注微信公众号</p>
                </div>
            </div>
        </div>
    </div>
    <div class="crumbs">
        <div class="crumbs-classify">
            <a class="crumbs-sel" code="city" href="javascript:;">城市租房</a>
            <a href="javascript:;" code="dirc" >城区租房</a>
            <a href="javascript:;" code="block">商圈租房</a>
            <a href="javascript:;" code="plot">小区租房</a>
        </div>
        <div>
            <div class="crumbs-list city">
                
            </div>
            <div class="crumbs-list dirc" style="display:none">
            
            </div>
            <div class="crumbs-list block" style="display:none">
                
            </div>
            <div class="crumbs-list plot" style="display:none">
                
            </div>
        </div>
    </div>
    <div class="copy-right">
        <div class="wibsite-center">
            <div class="footer-logo">
                <a href="index.jsp" >
                    <img src="img/public-20180702-FkLmdf41L0FSNAktybhKBxCs7ztn.png" alt="蛋壳公寓">
                </a>
            </div>
            <div class="copy-right-text">
                <div>© 2018 蛋壳公寓 京ICP备15009197号-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;京公网安备 11010102001946号</div>
                <div>紫梧桐（北京）资产管理有限公司&nbsp;&nbsp;|&nbsp;&nbsp;地址：北京市东城区朝阳门内大街8号朝阳首府2层212 </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

