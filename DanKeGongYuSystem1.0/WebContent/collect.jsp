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
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" >
    <!-- Set render engine for multi engine browser -->
    <meta name="renderer" content="webkit">
    <!-- Disable Baidu Siteapp -->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link media="all" type="text/css" rel="stylesheet" href="css/bootstrap-ec3bb52a00.min.css" >

    <link media="all" type="text/css" rel="stylesheet" href="css/swiper-0b941af5db.min.css" > 

    <link media="all" type="text/css" rel="stylesheet" href="css/common-4ce4e00253.css" >


    <link media="all" type="text/css" rel="stylesheet" href="css/user_center-78c5d29420.css">


    </head>
<body onload="getRoomList()">
<!-- 导入头部文件 -->
	<jsp:include page="/common/head.jsp" />
	
<div class="right-fixed" style="opacity: 0;">
    <div class="fixed-wrapper">
        <div class="scroll-to-top">
            <a href="javascript:void(0)" target="_parent"></a>
        </div>
        <div class="scroll-to-app">
            <a href="javascript:void(0)"></a>
            <div>
                <span></span>
                <img src="./collect_files/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH" style="width: 95px;height: 95px" alt="app下载">
                <p>扫描下载蛋壳APP</p>
            </div>
        </div>
        <div class="scroll-to-phone">
            <a href="javascript:void(0)"></a>
            <div>
                <img src="./collect_files/public-20180519-Fq8UiGCwbNXfmt4u4-DDZLkzBEQN" alt="客服电话图片">
                <span>400-110-1027</span>
            </div>
        </div>
        <div class="scroll-to-xcx">
            <a href="javascript:void(0)"></a>
            <div>
                <span class="xcx-close"></span>
                <span></span>
                <img src="./collect_files/public-20180606-Fma_F2IgLSK0VW-TZVo5UokQpm6w" style="width:95px;height:95px" alt="app下载">
                <p>小程序找房更容易</p>
            </div>
        </div>
    </div>
</div>
<div class="website-main">
    
        <!--person center banner-->
<!--个人中心 banner 图 -->


<script type="text/javascript">
    var cityCode = $('input[name="website-city-code"]').val(),
            cityId = 1,
            webApi = "/web-api";
    //加载城市ID
    $.get(webApi + '/base-configure/city-list', function (data) {
        for (var i = 0; i < data.length; i++) {
            if (data[i].code == cityCode) {
                cityId = data[i].id;
                break;
            }
        }
        /*加载banner*/
        $.get(webApi + "/user/customer-banner?city_id=" + cityId, function (data) {
            var bannerList = data.data;
            if (!bannerList.length) {
                $(".user-banner").remove()
            }
            var arr = [];
            $.each(bannerList, function (i, e) {
                arr.push(['<div class="item ' + (i == 0 ? "active" : "") + '">',
                    '<a href="' + e.url + '" target="_blank"><img src="' + e.image + '" alt=""></a>',
                    '</div>'].join(""));
            });

            $(".js-carousel-inner").html(arr.join(""));
            $(".user-banner").show();
            ;
        });
    });
</script>

        <!--person center banner end-->
<div class="p-contract">
    <!--crumbs-->
    <div class="m-crumbs w1032">
        <a href="https://www.dankegongyu.com/">蛋壳公寓</a>
        <span>&gt;</span>
        个人设置
        <span>&gt;</span>
        收藏
    </div>
    <div class="p-wrap clearfix w1032">
        <!--slide menu-->
        <div class="slide-menu">
            <ul class="menu-list-box clearfix user-center">
                        <li class="h3">个人设置</li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/user_center.jsp">  个人中心</a>
            </li>
                                <li class="menu-list current">
                <a href="javascript:; ">  我的收藏</a>
<!--                   <a href="javascript:; ">  我的收藏</a> -->
            </li>
<!--                                 <li class="menu-list "> -->
<%--                 <a href="${pageContext.request.contextPath}/telphone.html">  修改手机号</a> --%>
<!--             </li> -->
                                <li class="h3">租客服务</li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/contract.jsp">  我的合同</a>
            </li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/problem.jsp">  租房问题</a>
            </li>
                                <li class="h3">意见/建议</li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/feedback.html">  意见反馈</a>
            </li>
            </ul>
<script>
    //清空修改手机号页面sessionStorage缓存;
    if (document.URL.indexOf("telphone") == "-1") {
        sessionStorage.clear();
    }
</script>        </div>
        <!--slide menu end-->

        <div class="collect-list">
            <div style="padding-right: 30px;">
                <div class="page-title">
                    我的收藏
                    <a href="javascript:;">收藏管理</a>
                </div>
            </div>
            <div class="c-l" style="display: none;">
                <div class="collect-list-wp">

                </div>
                <div class="paging">

                </div>
            </div>
            <div class="no-collect" style="display: block;">
                <div>
                    <img src="img/public-20180706-Fss3zhLKqOHe_jzMWiB85usvb-NM" alt="">
                    <p>您还没有任何收藏记录</p>
                    <a href="${pageContext.request.contextPath}/bj.jsp">去找房</a>
                </div>
            </div>
        </div>

    </div>
</div>

</div>
<div class="footer">
    <div class="website-help">
        <div class="wibsite-center">
            <div class="website-f-list">
                <span>用户帮助</span>
                <p><a href="https://www.dankegongyu.com/about/notice.html" target="_blank">入住指南</a></p>
                <p><a href="https://www.dankegongyu.com/zhuanti/20180111lifeHacks" target="_blank">生活常识</a></p>
                <p><a href="https://www.dankegongyu.com/about/problem.html" target="_blank">租房问题</a></p>
            </div>
            <div class="website-f-list">
                <span>商务合作</span>
                <p><a href="https://www.dankegongyu.com/zhuanti/20171219Styleforum" target="_blank">商务合作</a></p>
            </div>
            <div class="website-f-list">
                <span>公司信息</span>
                <p><a href="https://www.dankegongyu.com/about/aboutus.html" target="_blank">关于蛋壳</a></p>
                <p><a href="https://www.dankegongyu.com/about/contact.html" target="_blank">联系蛋壳</a></p>
                <p><a href="https://www.dankegongyu.com/about/join.html" target="_blank">加入蛋壳</a></p>
            </div>
            <div class="website-f-list">
                <span>客服热线</span>
                <p>4001-551-551</p>
                <p class="time">工作日 09:00-21:00</p>
            </div>
            <div class="website-f-right">
                <div class="website-f-pic">
                    <img src="./collect_files/public-20180702-FlfqqYRpjYyFKdRUiJMD8b6RO02m" title="下载蛋壳公寓APP" alt="下载蛋壳公寓APP">
                    <p>扫码小程序找房</p>
                </div>
                <div class="website-f-pic">
                    <img src="./collect_files/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH" style="padding:0;" title="下载蛋壳公寓APP" alt="下载蛋壳公寓APP">
                    <p>下载蛋壳公寓APP</p>
                </div>
                <div class="website-f-pic">
                    <img src="./collect_files/public-20180104-FuHnSFKo71wRSuJSK4Z0pt6l76zh" title="关注蛋壳公寓官方微信" alt="关注蛋壳公寓官方微信">
                    <p>关注微信公众号</p>
                </div>
            </div>
        </div>
    </div>
    <div class="crumbs">
        <div class="crumbs-classify">
            <a class="crumbs-sel" code="city" href="javascript:;">城市租房</a>
            <a href="javascript:;" code="dirc">城区租房</a>
            <a href="javascript:;" code="block">商圈租房</a>
            <a href="javascript:;" code="plot">小区租房</a>
        </div>
        <div>
            <div class="crumbs-list city"><a target="_blank" class="issel" href="javascript:;">北京租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/sh">上海租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/gz">广州租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/sz">深圳租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/tj">天津租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/nj">南京租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/hz">杭州租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/wh">武汉租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/cd">成都租房</a></div>
            <div class="crumbs-list dirc" style="display:none"><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E4%B8%9C%E5%9F%8E%E5%8C%BA.html">东城区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E8%A5%BF%E5%9F%8E%E5%8C%BA.html">西城区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA.html">朝阳区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%B5%B7%E6%B7%80%E5%8C%BA.html">海淀区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E4%B8%B0%E5%8F%B0%E5%8C%BA.html">丰台区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E7%9F%B3%E6%99%AF%E5%B1%B1%E5%8C%BA.html">石景山区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E9%80%9A%E5%B7%9E%E5%8C%BA.html">通州区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%98%8C%E5%B9%B3%E5%8C%BA.html">昌平区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E5%A4%A7%E5%85%B4%E5%8C%BA.html">大兴区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E9%A1%BA%E4%B9%89%E5%8C%BA.html">顺义区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%88%BF%E5%B1%B1%E5%8C%BA.html">房山区租房</a></div>
            <div class="crumbs-list block" style="display:none"><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E6%9C%9D%E9%98%B3%E9%97%A8.html">朝阳门租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E5%9B%9B%E6%83%A0.html">四惠租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%B5%B7%E6%B7%80%E5%8C%BA-b%E8%A5%BF%E4%BA%8C%E6%97%97.html">西二旗租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E9%9D%92%E5%B9%B4%E8%B7%AF.html">青年路租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%B5%B7%E6%B7%80%E5%8C%BA-b%E4%B8%8A%E5%9C%B0.html">上地租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E6%9C%9B%E4%BA%AC.html">望京租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%98%8C%E5%B9%B3%E5%8C%BA-b%E5%A4%A9%E9%80%9A%E8%8B%91.html">天通苑租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E5%B8%B8%E8%90%A5.html">常营租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E5%A4%A7%E6%9C%9B%E8%B7%AF.html">大望路租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E6%AC%A2%E4%B9%90%E8%B0%B7%E6%99%AF%E5%8C%BA.html">欢乐谷景区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E9%80%9A%E5%B7%9E%E5%8C%BA-b%E7%89%A9%E8%B5%84%E5%AD%A6%E9%99%A2%E8%B7%AF.html">物资学院路租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E7%AE%A1%E5%BA%84.html">管庄租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E4%B8%B0%E5%8F%B0%E5%8C%BA-b%E5%85%AD%E9%87%8C%E6%A1%A5.html">六里桥租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E5%8D%81%E9%87%8C%E5%A0%A1.html">十里堡租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E7%AB%8B%E6%B0%B4%E6%A1%A5.html">立水桥租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E4%B8%89%E5%85%83%E6%A1%A5.html">三元桥租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E4%B8%B0%E5%8F%B0%E5%8C%BA-b%E5%AE%8B%E5%AE%B6%E5%BA%84.html">宋家庄租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E5%B0%86%E5%8F%B0.html">将台租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E5%8F%8C%E4%BA%95.html">双井租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E6%9C%9D%E9%98%B3%E5%8C%BA-b%E9%BB%84%E6%B8%A0.html">黄渠租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj/d%E4%B8%B0%E5%8F%B0%E5%8C%BA-b%E6%96%B0%E5%AE%AB.html">新宫租房</a></div>
            <div class="crumbs-list plot" style="display:none"><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E6%96%B0%E5%BB%BA%E6%9D%91%E5%B0%8F%E5%8C%BA">新建村小区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E5%BE%B7%E9%91%AB%E5%98%89%E5%9B%AD%E4%B8%89%E6%9C%9F">德鑫嘉园三期租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E5%9E%A1%E5%A4%B4%E7%BF%A0%E5%9F%8E%E9%A6%A8%E5%9B%AD">垡头翠城馨园租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E5%B8%B8%E8%90%A5%E6%B0%91%E6%97%8F%E5%AE%B6%E5%9B%AD">常营民族家园租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E9%A6%96%E5%BC%80%E5%8D%8E%E6%B6%A6%E5%9F%8E">首开华润城租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E7%AE%A1%E5%BA%84%E6%96%B0%E6%9D%91">管庄新村租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E9%A9%AC%E8%BF%9E%E5%BA%97%E5%B0%8F%E5%8C%BA">马连店小区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E9%BE%99%E5%86%A0%E5%86%A0%E5%8D%8E%E8%8B%91%E4%BA%8C%E5%8C%BA">龙冠冠华苑二区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E4%B8%96%E7%95%8C%E4%BE%A8%E5%95%86%E4%B8%AD%E5%BF%83">世界侨商中心租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E5%9B%9E%E9%BE%99%E8%A7%82%E6%96%B0%E6%9D%91%E4%B8%AD%E5%8C%BA">回龙观新村中区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E7%B4%AB%E9%87%91%E6%96%B0%E5%B9%B2%E7%BA%BF%E5%9B%9B%E6%9C%9F">紫金新干线四期租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E8%BF%9E%E5%BF%83%E5%9B%AD%E8%A5%BF%E5%8C%BA">连心园西区租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E9%87%91%E9%9A%85%E6%B1%87%E6%98%9F%E8%8B%91">金隅汇星苑租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E6%9E%AB%E6%B3%89%E8%8A%B1%E5%9B%AD">枫泉花园租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E5%8F%8B%E8%B0%8A%E5%98%89%E5%9B%AD%E4%B8%89%E6%9C%9F">友谊嘉园三期租房</a><a target="_blank" class="" href="https://www.dankegongyu.com/room/bj?search_text=%E5%8C%97%E8%8A%B1%E5%9B%AD%E5%B0%8F%E5%8C%BA">北花园小区租房</a></div>
        </div>
    </div>
    <div class="copy-right">
        <div class="wibsite-center">
            <div class="footer-logo">
                <a href="https://www.dankegongyu.com/">
                    <img src="./collect_files/public-20180702-FkLmdf41L0FSNAktybhKBxCs7ztn" alt="蛋壳公寓">
                </a>
            </div>
            <div class="copy-right-text">
                <div>© 2018 蛋壳公寓 京ICP备15009197号-1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;京公网安备 11010102001946号</div>
                <div>紫梧桐（北京）资产管理有限公司&nbsp;&nbsp;|&nbsp;&nbsp;地址：北京市东城区朝阳门内大街8号朝阳首府2层212 </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
	  /*退出登录*/
	
	
    
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
<!--APP推广层 end-->

    <script type="text/javascript">

       

        var current_page = 1
        var sum = 0

        getRoomList(1, 9)

        // 分页
        function nextPage() {
            $('.next-page').on('click', function () {
                if (sum > 1 && current_page < sum) {
                    getRoomList(current_page + 1, 9)
                }
            })

            $('.paging a').not('.next-page').on('click', function () {
                var page = $(this).text() * 1
                console.log(page)
                getRoomList(page, 9)
            })
        }

        var flag = 0;

        $('.page-title a').on('click', function () {
            if (!flag) {
                $('.page-title a').text('取消')
                flag = 1
                $('.cancel-collect').show()
                cancel()
            } else {
                $('.page-title a').text('收藏管理')
                flag = 0
                $('.cancel-collect').hide()
            }
        })

        // 取消收藏
        function cancel() {
            $('.cancel-collect').on('click', function () {
                var id = $(this).attr('room-id')
                var token = $('<input type="hidden" name="_token" value="mbFFKV3yVaGsY7sIYqPzlrFsjSh5IKZd5BwCBXb5">').val()

                $.ajax({
                    url: '/web-api/user/cancel-collect',
                    type: "POST",
                    data: {
                        'room_ids': id,
                        '_token': token,
                    },
                    success: function (data) {
                        if (data.success) {
                            $('.collect-list-wp').empty()
                            getRoomList(1, 9)
                            $('.page-title a').text('收藏管理')
                            flag = 0
                            $('.cancel-collect').hide()
                        }
                    },
                    error: function (err) {
                        console.log(err);
                    }
                })

            })
        }

        // 获取收藏列表
//         function getRoomList(page, num) {
        	function getRoomList() {
        	
            $.ajax({
                url: 'getCollectRoomSvl',
                type: "post",
                data: {
                    'phone': '',
                    
                },
                dataType:"json",
                success: function (data) {
//                 	alert("显示调用到getCollectRoomList");
//                 	alert("data显示"+data);
//                 	alert("data+"+data[0].imgpath);
                    if (data != null) {
                    	 $('.no-collect').hide()
//                         if (data.data.total === 0) {
//                             $('.c-l').hide()
//                             $('.no-collect').show()
//                             return
//                         } else {
//                             $('.no-collect').hide()
//                         }

                        var collectList = null
                        	for(var i = 0;i<data.length;i++){	
                        		
//                         	alert(data[i].comment);
                         		 var collectItem = 
                                  '<div class="collect-list-item">' +
//                                      '<a target="_blank" href="' + linkurl + '">' +
                                  '<img src="' + data[i].imgpath + '" alt="">' +
                                  '<div class="collect-list-title">' +
                                  '<div class="money">¥ ' + data[i].price + '元/月</div>' +
                                  '<div class="tit">' + data[i].comment + '</div>' +
                                  '<div>' + data[i].subway + '</div>' +
                                  '</div>' +
                                 '<a class="cancel-collect" room-id="' + data[i].roomnum + '" href="javascript:;">X</a>' +
                                  '</a>' +
                                  '</div>'
                             collectList += collectItem 
                        	}
                        

//                         $(data).each(function (index, value) {
// 								alert(value.address+"value.address");
// //                             var issell = value.status == '可出租' ? '' : '<div class="issell"><img src="https://public.wutongwan.org/public-20180703-FuZXan-rU8o0O0ENfKX5xXeuR1Rm" alt=""></div>'
// //                             var linkurl = value.status == '可出租' ? value.room_link : 'javascript:void(0)';
//                             var collectItem =
//                                     '<div class="collect-list-item">' +
// //                                     '<a target="_blank" href="' + linkurl + '">' +
//                                     '<img src="' + value.imgpath + '" alt="">' +
//                                     '<div class="collect-list-title">' +
//                                     '<div class="money">¥ ' + value.price + '元/月</div>' +
//                                     '<div class="tit">' + value.comment + '</div>' +
//                                     '<div>' + value.subway + '</div>' +
//                                     '</div>' +
//                                     '<a class="cancel-collect" room-id="' + value.roomnum + '" href="javascript:;">X</a>' +
//                                     '</a>' +
//                                     '</div>'
//                             collectList += collectItem
//                         })

//                         $('.collect-list-wp').empty()
//                         $('.collect-list-wp').append(collectList)

//                         var pageList = ''
//                         var p = Math.ceil(data.data.total / 9)

//                         for (var i = 0; i < p; i++) {
//                             pageList += '<a href="javascript:;">' + (i + 1) + '</a>'
//                         }

//                         pageList += '<a class="next-page" href="javascript:;">></a>'

//                         $('.paging').empty()
//                         $('.paging').append(pageList)

//                         $($('.paging a')[data.data.current_page * 1 - 1]).addClass('page-num')
//                         $($('.paging a')[data.data.current_page * 1 - 1]).siblings().removeClass('page-num')

//                         current_page = data.data.current_page * 1
//                         sum = p

//                         nextPage()

                    }
                },
//                 error: function (err) {
//                     console.log(err);
//                 }
            })
        }
    </script>



</body></html>