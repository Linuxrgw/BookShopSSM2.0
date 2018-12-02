<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<input type="hidden" value="400-110-1027" id="zjhPhoneNumber">
	<input type="hidden" value="bj" name="website-city-code">
	<input type="hidden" value="找房" name="website-page-name">
	<div class="danke_header" id="topbar" data-spy="affix"
		data-offset-top="32">
		<div class="wibsite-center header-center">
			<div class="logo fl">
				<a href="${pageContext.request.contextPath}/index.jsp"><img
					src="img/public-20180112-FgKd1DNNCyC_3Jq8dqbMIX7oCLCA.png"></a>
				<h2 style="display: none;">蛋壳公寓官网，租房，整租，合租</h2>
			</div>
			<div class="nav-help fl"></div>
			<div class="fl dkcity hd-sprite-ab">
				<span id="dropdownMenu1" data-toggle="dropdown"><i></i>北京</span>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li><a href="javascript:void(0)" rel="bj">北京市</a></li>
					<li><a href="javascript:void(0)" rel="sz">深圳市</a></li>
					<li><a href="javascript:void(0)" rel="sh">上海市</a></li>
					<li><a href="javascript:void(0)" rel="hz">杭州市</a></li>
					<li><a href="javascript:void(0)" rel="tj">天津市</a></li>
					<li><a href="javascript:void(0)" rel="wh">武汉市</a></li>
					<li><a href="javascript:void(0)" rel="nj">南京市</a></li>
					<li><a href="javascript:void(0)" rel="gz">广州市</a></li>
					<li><a href="javascript:void(0)" rel="cd">成都市</a></li>
				</ul>
			</div>
			<div class="nav fl">
				<a href="${pageContext.request.contextPath}/AllRoomSvl" data-subject="首页">首页</a>
				<a href="${pageContext.request.contextPath}/bj.jsp"data-subject="找房">找房</a>
				<a href="${pageContext.request.contextPath}/joint_rent.jsp"data-subject="合租">合租</a>
				<a href="${pageContext.request.contextPath}/entire_rent1.jsp"data-subject="整租">整租</a>
				<a href="${pageContext.request.contextPath}/rent_cycle=1.jsp"data-subject="月租" class="nav-owner"> 月租
				<img src="${pageContext.request.contextPath}/img/public-20181023-FrvoseweQ_uceNX0PxMSF5RVsd6M.png"alt="业主图标" class="owner-gray-icon"></a> 
				<a href="${pageContext.request.contextPath}/yezhu.jsp" data-subject="业主">业主</a> 
				<a href="${pageContext.request.contextPath}/aboutus.jsp" data-subject="关于">关于</a>
			</div>
			
			<c:if test="${sessionScope.phone eq null }">
					<a class="dklogin fr" href="${pageContext.request.contextPath}/login.jsp">登录</a>
				</c:if>
				<c:if test="${sessionScope.phone ne null }">
					<div class="dklogined-wrapper">
                <a class="dklogined fr" href="javascript:void(0)"style="background: url(&quot;https://public.wutongwan.org/public-20180519-FtfmOHVmUq7-6Tzol_cyQBE9yt3y&quot;);">
                </a>
                <div class="dklogined-center">
                    <a href="${pageContext.request.contextPath}/user_index.jsp">个人中心</a>
                    <a class="dklogout" href="javascript:;">安全退出</a>
                </div>
           		 </div>
					
<%-- 					<a class="dklogout" href="${pageContext.request.contextPath}/user_index.jsp">${sessionScope.phone}</a> --%>
<!-- 					<a class="dklogout"  >退出 </a> -->
				</c:if>
			
			
			
			<div class="dkphone fr">
				<div class="serphoen fl hd-sprite-ab">
					<label></label> <span>服务时间：09:00 ~ 21:00</span>
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
                <img src="img/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH.png" tppabs="https://public.wutongwan.org/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH" style="width: 95px;height: 95px" alt="app下载">
                <p>扫描下载蛋壳APP</p>
            </div>
        </div>
        <div class="scroll-to-phone">
            <a href="javascript:void(0)"></a>
            <div>
                <img src="img/public-20180519-Fq8UiGCwbNXfmt4u4-DDZLkzBEQN.png" tppabs="https://public.wutongwan.org/public-20180519-Fq8UiGCwbNXfmt4u4-DDZLkzBEQN" alt="客服电话图片">
                <span>400-110-1027</span>
            </div>
        </div>
        <div class="scroll-to-xcx">
            <a href="javascript:void(0)"></a>
            <div>
                <span class="xcx-close"></span>
                <span></span>
                <img src="img/public-20180606-Fma_F2IgLSK0VW-TZVo5UokQpm6w.jpg" tppabs="https://public.wutongwan.org/public-20180606-Fma_F2IgLSK0VW-TZVo5UokQpm6w" style="width:95px;height:95px" alt="app下载">
                <p>小程序找房更容易</p>
            </div>
        </div>
    </div>
</div>

    <script src="js/jquery-2f6b11a7e9.min.js" ></script>

    <script src="js/bootstrap-5869c96cc8.min.js" ></script>


<script type="text/javascript">
	  /*退出登录*/
	
	$(".dklogout").on("click",function(){
// 		alert("退出按钮");
     
        $.ajax({
            url:'LogOutSvl',
            type:"POST",
            success:function(data){
            	window.location.href="login.jsp";
            },
            error:function(err){
                console.log(err);
            }
        })
    })
    
    $('.dklogined-wrapper').hover(function () {
        $('.dklogined-center').show()
        $('.dklogined').css('background', 'url(https://public.wutongwan.org/public-20180519-FqitD4IbypL6rbHSVa_yq4iSsaQE)')
    }, function () {
        $('.dklogined-center').hide()
        $('.dklogined').css('background', 'url(https://public.wutongwan.org/public-20180519-FtfmOHVmUq7-6Tzol_cyQBE9yt3y)')
    })

    $('.scroll-to-phone').hover(function () {
        $('.scroll-to-phone div').show()
        $('.scroll-to-xcx div').hide()
        $('.xcx-close').hide()
    }, function () {
        $('.scroll-to-phone div').hide()
    })

    $('.scroll-to-app').hover(function () {
        $('.scroll-to-app div').show()
        $('.scroll-to-xcx div').hide()
        $('.scroll-to-app a').css('background-color', '#3dbcc6')
        $('.xcx-close').hide()
    }, function () {
        $('.scroll-to-app div').hide()
        $('.scroll-to-app a').css('background-color', '#333333')
    })

    $('.scroll-to-xcx').hover(function () {
        $('.scroll-to-xcx div').show()
        $('.scroll-to-xcx a').css('background-color', '#3dbcc6')
    }, function () {
        $('.scroll-to-xcx div').hide()
        $('.scroll-to-xcx a').css('background-color', '#333333')
        $('.xcx-close').hide()
    })

    $('.xcx-close').on('click', function () {
        $('.scroll-to-xcx div').hide()
        $('.xcx-close').hide()
    })

    $('.crumbs-classify a').on('click', function () {
        $(this).addClass('crumbs-sel')
        $(this).siblings().removeClass('crumbs-sel')

        var code = '.crumbs-list.' + $(this).attr('code')
        $(code).show()
        $(code).siblings().hide()
    })

    
         

</script>
	