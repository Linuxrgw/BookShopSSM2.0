<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8"/>
    <title>蛋壳租房问题_蛋壳租房生活服务_蛋壳公寓</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name='keywords' content='蛋壳租房,蛋壳服务,蛋壳生活服务,蛋壳租房问题,蛋壳公寓租房'>
    <meta name="description"
          content="蛋壳租房生活服务囊括了所有生活小问题,租住蛋壳公寓有问题就看蛋壳生活服务.在这里你可解决宽带问题、交租问题、保洁问题、维修问题等生活服务哦."/>
    <link rel="icon" type="image/x-icon" href="css/favicon.ico" tppabs="https://s1.wutongwan.org/favicon.ico">
    <!-- Set render engine for multi engine browser -->
    <meta name="renderer" content="webkit">
    <!-- Disable Baidu Siteapp -->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link media="all" type="text/css" rel="stylesheet" href="css/bootstrap-ec3bb52a00.min.css" tppabs="https://s1.wutongwan.org/build/bower/bootstrap/dist/css/bootstrap-ec3bb52a00.min.css">

    <link media="all" type="text/css" rel="stylesheet" href="css/swiper-0b941af5db.min.css" tppabs="https://s2.wutongwan.org/build/css/swiper-0b941af5db.min.css">

    <link media="all" type="text/css" rel="stylesheet" href="css/common-4ce4e00253.css" tppabs="https://s1.wutongwan.org/build/css/website/common-4ce4e00253.css">


    <script src="jquery-888d4551b8.js" tppabs="https://s3.wutongwan.org/build/bower/jquery/dist/jquery-888d4551b8.js"></script>

    <script src="bootstrap-5869c96cc8.min.js" tppabs="https://s2.wutongwan.org/build/bower/bootstrap/dist/js/bootstrap-5869c96cc8.min.js"></script>

    <script src="swiper-3-cd2bffb7f2.3.1.min.js" tppabs="https://s1.wutongwan.org/build/js/pc_home/swiper-3-cd2bffb7f2.3.1.min.js"></script>

    <script src="md5-ea27c6f755.min.js" tppabs="https://s1.wutongwan.org/build/js/md5-ea27c6f755.min.js"></script>

    <script src="city-b83380172d.js" tppabs="https://s1.wutongwan.org/build/js/pc_home/city-b83380172d.js"></script>

    <script src="public-0fd418fb37.js" tppabs="https://s3.wutongwan.org/build/js/website/public-0fd418fb37.js"></script>

    <script src="sa-56cab3188f.js" tppabs="https://s1.wutongwan.org/build/js/sensors-analytics/sa-56cab3188f.js"></script>

    <script src="sa-method-b38d9d9979.js" tppabs="https://s3.wutongwan.org/build/js/sensors-analytics/sa-method-b38d9d9979.js"></script>

    <link media="all" type="text/css" rel="stylesheet" href="css/pc_user_help-a7fad66719.css" tppabs="https://s3.wutongwan.org/build/css/pc_user_help-a7fad66719.css">

        <script>
        var id = '';
        $.ajax({
            type: 'GET',
            url: '/web-api/user/info',
            async: false,
            error: function(msg) {
                console.log(msg)
            },
            success: function(data) {
               id = data.data.mobile || '';
            },
        })

        sa.register({
            'platformType': 'PC',
            'pid': 'dankegongyu_customer',
            'cid': 'bj',
            'ucid': id,
            'uuid': id,
            'ssid': id,
            'lmei': '',
            'android_id': '',
            'idfa': '',
            'idfv': '',
            'mac_id': '',
        });
        $(function () {
            $('.nav-owner').click(function () {
                saMethod.ClickingHomepage('月租', $(this).attr('key') || '', '', '')
            })
        })

        // sa.quick('autoTrack');

 
    </script>
    </head>


<!--[if lte IE 8]>
<script src="html5shiv-0ce8f35589.js" tppabs="https://s2.wutongwan.org/build/js/pc_home/html5shiv-0ce8f35589.js"></script>

<script src="respond-972b9d5576.min.js" tppabs="https://s2.wutongwan.org/build/js/pc_home/respond-972b9d5576.min.js"></script>

<![endif]-->

<!--[if lt IE 8]>
<div class="alert-danger text-center">您正在使用<strong>过时</strong>的浏览器，本网站不能很好的支持。
    <a href="javascript:if(confirm(%27http://browser.qq.com/  \n\nThis file was not retrieved by Teleport Ultra, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://browser.qq.com/%27" tppabs="http://browser.qq.com/" target="_blank">立即使用最新QQ浏览器</a> 获得更好的使用体验！
</div>
<![endif]-->

<body>
<!-- 导入头部文件 -->
	<jsp:include page="/common/head.jsp" />

<div class="website-main">
    
<div class="p-problem">
	<div class="p-wrap clearfix w1032">
		<!--slide menu-->
		<div class="slide-menu">
			<ul class="menu-list-box clearfix">
                        <li class="menu-list current">
                <a href="problem.html" tppabs="https://www.dankegongyu.com/about/problem.html">租房问题</a>
            </li>
            </ul>
		</div>
		<!--slide menu end-->

		<div class="slide-main page-problem">
			 <h3 class="main-name">租房问题</h3>
			 <div class="main-cont">
			 	 <div class="loadImg js-loading" style="display: none;"></div>
<div class="problem-nav js-problem-nav"><a class="current" href="javascript:;" data-id="3">宽带问题</a><a class="" href="javascript:;" data-id="1">交租问题</a><a class="" href="javascript:;" data-id="4">保洁问题</a><a class="" href="javascript:;" data-id="5">维修问题</a><a class="" href="javascript:;" data-id="7">生活服务</a></div>
<div class="problem-main js-problem-main">
<h3 class="tit js-tab-tit">宽带问题</h3><div data-list="3" class="tab-list current"><h4 class="pro-name noselect">搜不到wifi信号</h4><div class="pro-desc" style="display: none;"><p>请优先确认路由器是否通电，如果已经插电，就重启路由器；如果还是不行，请报修
您可下载蛋壳公寓APP——【我的】——【维修服务】—蛋壳的租户可按照步骤操作选择报修即可；
或关注“蛋壳公寓”微信公众号——【个人中心】—登录的租户可按照步骤操作选择报修即可；</p></div><h4 class="pro-name noselect">能搜索到wifi信号，但是输入密码后连接不上</h4><div class="pro-desc" style=""><p>请确认密码是否输入正确，如果确认输入正确，请报修
您可下载蛋壳公寓APP——【我的】——【维修服务】—蛋壳的租户可按照步骤操作选择报修即可；或关注“蛋壳公寓”微信公众号——【个人中心】—登录的租户可按照步骤操作选择报修即可；</p></div><h4 class="pro-name noselect">想独立拉一根网线是否可以?</h4><div class="pro-desc" style=""><p>NO NO NO 这是会影响其他室友使用的哦</p></div></div><div data-list="1" class="tab-list"></div><div data-list="4" class="tab-list"></div><div data-list="5" class="tab-list"></div><div data-list="7" class="tab-list"></div></div>

<script type="text/javascript">
    var webApi = "/web-api"
    /*初始化 分类导航*/
    $.ajax({
        url: webApi + "/base-configure/first-daily-problems",
        type: "GET",
        dataType: "json",
        success: function (data) {
            var nameList = data.data;
            var arr = [];

            $.each(nameList, function (i, e) {
                var className = "",
                        tit = "";
                if (i == 0) {
                    className = "current";
                    tit = '<h3 class="tit js-tab-tit">' + e.name + '</h3>';
                }
                $(".js-problem-main").append(tit + '<div data-list="' + e.id + '" class="tab-list"></div>')
                arr.push('<a class="' + className + '" href="javascript:;" data-id="' + e.id + '">' + e.name + '</a>');
                loadList(i == 0 && e.id, i)
            });
            $(".js-problem-nav").html(arr.join(""));

        }
    });
    /*加载分类列表*/
    function loadList(id, i) {

        if (id && $("[data-list='" + id + "']").html() !== "") {
            return false;
        }
        $("[data-list='" + id + "']").html("<span></span>")
        var html = function (obj) {
            var arr = ['<h4 class="pro-name noselect">' + obj.name + '</h4>',
                '<div class="pro-desc">',
                '<p>' + (obj.advice == undefined ? "暂无数据" : obj.advice) + '</p>',
                '</div>']
            return arr.join("");
        }
        $.ajax({
            type: "GET",
            url: webApi + "/base-configure/problem-list/" + id,
            dataType: "json",
            success: function (data) {

                var dataList = data.data;
                var arr = [];
                $.each(dataList, function (i, e) {
                    arr.push(html(e))
                });
                $("[data-list='" + id + "']").html(arr.join("")).addClass(i == 0 ? "current" : "")
                $(".js-loading").fadeOut(300)

            }
        });
    }

    /*问题导航tab事件监听*/
    $(".js-problem-nav").on("click", "a", function () {
        var $this = $(this),
                id = $this.attr("data-id"),
                current = "current";
        $this.addClass(current).siblings().removeClass(current);
        $(".js-tab-tit").html($this.html())
        $(".js-problem-main .tab-list").eq($(this).index()).addClass(current).siblings().removeClass(current);
        loadList(id)
    })

    /*问题列表事件监听*/
    $(".js-problem-main").on("click", ".pro-name", function () {
        var $this = $(this),
                open = "open",
                desc = ".pro-desc";
        if (!$this.hasClass(open)) {
            $this.addClass(open).siblings().removeClass(open);
            $this.next(desc).siblings(desc).slideUp(200);
            $this.next(desc).slideDown(200);
        } else {
            $this.removeClass(open);
            $this.next(desc).slideUp(200);
        }
    });

    sa.quick('autoTrack', {
        'page_type': '个人中心频道',
        'source_type': '租房问题',
        'house_positiontype': '',
        'house_position': '',
        'house_scope': '',
        'house_price': '',
        'house_type': '',
        'business_circle': '',
        'house_rentway': '',
        'house_area': '',
        'house_id': '',
        'housedel_id': '',
        'resblock_name': '',
    });
</script>			 </div>
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
                    <img src="./about-proble_files/public-20180702-FlfqqYRpjYyFKdRUiJMD8b6RO02m" title="下载蛋壳公寓APP" alt="下载蛋壳公寓APP">
                    <p>扫码小程序找房</p>
                </div>
                <div class="website-f-pic">
                    <img src="./about-proble_files/public-20180724-FvFKon429iKW8-oJFhggv0NQk_cH" style="padding:0;" title="下载蛋壳公寓APP" alt="下载蛋壳公寓APP">
                    <p>下载蛋壳公寓APP</p>
                </div>
                <div class="website-f-pic">
                    <img src="./about-proble_files/public-20180104-FuHnSFKo71wRSuJSK4Z0pt6l76zh" title="关注蛋壳公寓官方微信" alt="关注蛋壳公寓官方微信">
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
                    <img src="./about-proble_files/public-20180702-FkLmdf41L0FSNAktybhKBxCs7ztn" alt="蛋壳公寓">
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
	
	$(".dklogout").on("click",function(){
        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': 'mbFFKV3yVaGsY7sIYqPzlrFsjSh5IKZd5BwCBXb5'
    },
    cache: false,
    async: false,
});;
        $.ajax({
            url:'/web-api/user/logout',
            type:"POST",
            success:function(data){
                location.reload()
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

    
    getCityList('北京', 'bj')
    getDircList('北京', 'bj', '')
    getBlockList('北京', 'bj', '')
    getPlotList('北京', 'bj', '')              

</script>
<!--APP推广层 end-->



</body></html>