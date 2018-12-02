<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0028)https://www.dankegongyu.com/ -->
<html>
<head>
<script type="text/javascript">
window.onload="AllRoomSvl";
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <title>北京租房_北京房屋出租_北京租房信息-蛋壳公寓官网</title>
    <meta name="renderer" content="webkit">
    <!-- Disable Baidu Siteapp -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name='keywords' content='北京租房网,白领公寓出租价格,北京靠谱房屋租赁信息网,北京出租房屋信息,蛋壳公寓靠谱,上市租房信息'>
    <meta name="description"
          content="北京蛋壳公寓官网为您提供北京市个人房源费用信息平台,专为城市白领打造轻时尚最好公寓出租,北京租房,合租房,整租房,上市租房就找蛋壳公寓.蛋壳公寓让租房变的简单快乐."/>
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" >
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link media="all" type="text/css" rel="stylesheet" href="css/bootstrap-ec3bb52a00.min.css" >

    <link media="all" type="text/css" rel="stylesheet" href="css/swiper-0b941af5db.min.css" >

    <link media="all" type="text/css" rel="stylesheet" href="css/common-4ce4e00253.css" >

<!--     <link media="all" type="text/css" rel="stylesheet" href="css/common-a2855707a0.css"> -->

        <link media="all" type="text/css" rel="stylesheet" href="css/index-a06015f5c6.css">
        

    <!-- Set render engine for multi engine browser -->

</head>
<body onload="AllRoomSvl">

<!-- 导入头部文件 -->
	<jsp:include page="/common/head.jsp" />

<div class="website-main">
        <div class="banner">
        <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
            <div class="carousel-inner"><div class="item"><a key="0" href="https://www.dankegongyu.com/zhuanti/20181101November?citycode=bj" target="_blank" title="home趴-蛋壳造">
            <img alt="home趴-蛋壳造图片" title="home趴-蛋壳造" src="img/public-20181031-FpnU-fBvA0zfl03qOcd74ARTJZsC.png"></a></div>
            <div class="item active"><a key="1" href="https://www.dankegongyu.com/rent-cycle-recommend/bj?rent_cycle=1" target="_blank" title="蛋壳月租">
            <img alt="蛋壳月租图片" title="蛋壳月租" src="img/public-20181023-Furrx3QOtSdMbtNkS3SE1hRQaQiH.png"></a></div>
            <div class="item"><a key="2" href="https://mp.weixin.qq.com/s/DnCJM1iYT8nbK9JG8mQOew" target="_blank" title="盛世">
            <img alt="盛世图片" title="盛世" src="img/public-20181026-FmDK58uMZjQkL3bnquiN72-xqx-J.png"></a></div>
            <div class="item"><a key="3" href="http://www.dankegongyu.com/zhuanti/201709panorama" target="_blank" title="3D全景看房">
            <img alt="3D全景看房图片" title="3D全景看房" src="img/public-20180104-FjUdE-2AwpzRnDU9KDtReMbI1J9F.png"></a></div></div>
            <a class="carousel-control left" href="https://www.dankegongyu.com/#myCarousel" data-slide="prev"></a>
            <a class="carousel-control right" href="https://www.dankegongyu.com/#myCarousel" data-slide="next"></a>
        </div>
        <div class="search">
            <div class="search-box">
                <div class="search-select">
                    <span>全部</span>
                    <div class="search-select-list" tabindex="0">
                        <label>全部</label>
                        <label>整租</label>
                        <label>合租</label>
                    </div>
                </div>
                <input class="search-box" type="text"id="search-box" placeholder="例如: 回龙观、双井、天通苑、青年路、望京等" autocomplete="off">
                <div class="search-btn">搜索</div>
                <script>
                    
                        $('.search-btn').click(function () {
                        	
                        	var text = $("#search-box").val();
                        	
                            window.location.href="SearchBoxSvl?text="+text;
                        })
                        $('.search-box').click(function () {
                            saMethod.Clickingsearchitem('点击搜索框', window.location.href)
                        })
                    
                </script>
            </div>
<!--             <a href="https://www.dankegongyu.com/map/bj?from=pc_home" target="_blank" class="search-map-btn">地图找房</a> -->

        </div>
        <div class="searchbg"></div>
    </div>
    <div class="index-box">
        <div class="wibsite-center">
            <div class="box-title">
                <div class="box-title-fl fl">
                    <h1>
                        <span><b>精选房源</b>为你而选</span>
                        <p>蛋壳公寓致力于为租户创造高品质生活而努力</p>
                    </h1>
                </div>
                <div class="box-title-fr fr">
                    <a key="0" href="${pageContext.request.contextPath }/bj.jsp">更多</a>
                </div>
            </div>
            <div class="index-rooms">
            <c:forEach var = "room" items = "${requestScope.rooms }" varStatus = "num">
            <a  href="RoomDetailSvl?roomid=${room.roomnum}" target="_blank">         
            <img title="1690" src="${pageContext.request.contextPath }/upload/${room.imgpath}" alt="精选房源图片">
            <span><b>￥${room.price }</b>元/月</span>
            <p>${room.comment }</p>
            <label>地铁 ${room.subway }/ ${room.area } </label>
            </a>
            </c:forEach>
            
            </div>
        </div>
    </div>
    
    <div class="index-sq">
        <div class="wibsite-center">

            <div class="box-title">
                <div class="box-title-fl fl J-joint-tit">
                    <h2>
                        <span><b>合租·样板间</b>多种风格</span>
                        <p>复古和颓废艺术范的格调颇受大众欢迎</p>
                    </h2>
                </div>
                <div class="box-title-fr fr J-title-2"><label is-muji="1" is-gyf="1" class="on">房间</label><label is-muji="1" is-gyf="1">客厅</label><label is-muji="1" is-gyf="1">卫生间</label><label is-muji="1" is-gyf="1">厨房</label></div>
            </div>

            <div class="sample-box J-sample-2">
                <div class="sample block">
                <div id="sampleHe0" class="sample-slide carousel slide" data-interval="false" data-ride="carousel">
                <ul class="sample-list carousel-inner">
                <li class="item active">
                <a href="https://www.dankegongyu.com/recommend-list/bj?rent_type=joint_rent">
                <img dalay-src="img/public-20180329-Fi8y12a19ESuM_4rFBtv7xto1XAF.png" title="MUJI风样板间图片" src="img/public-20180329-Fi8y12a19ESuM_4rFBtv7xto1XAF.png" alt="MUJI风样板间图片">
                </a>
                <p class="sample-name">每次进入房屋，淡蓝色的墙面，给你梦幻的世界<a class="inList" href="https://www.dankegongyu.com/room/bj/zMUJI%E9%A3%8E-c%E5%90%88%E7%A7%9F.html">查看房源</a></p>
                </li>
                </ul>
                <div class="sample-btn sample-prev " href="#sampleHe0" data-slide="prev"></div>
                </div>
                <div class="sample-si">
                <div class="si" data-idx="1" data-toggle="modal" data-target="#picture-modal">
                <img class="m1 on" title="租房，整租，合租" dalay-src="img/public-20180329-FhNHjTODhCrjN2rjUMm2Q1Cltu4m.png" src="img/public-20180329-FhNHjTODhCrjN2rjUMm2Q1Cltu4m.png">
                </div>
                <div class="si" data-idx="2" data-toggle="modal" data-target="#picture-modal">
                <img class="m1 on" title="租房，整租，合租" dalay-src="img/public-20180329-FrNsOKzIZWWtKJGPtGzZ0A4g8zE_.png" src="img/public-20180329-FrNsOKzIZWWtKJGPtGzZ0A4g8zE_.png">
                </div>
                <div class="si" data-idx="3" data-toggle="modal" data-target="#picture-modal">
                <img class="m1 on" title="租房，整租，合租" dalay-src="img/public-20180329-FheQabPfVZyAwEHhGlC2VaWADEtc.png" src="img/public-20180329-FheQabPfVZyAwEHhGlC2VaWADEtc.png">
                </div>
                </div> 
                </div>          
            </div>

        </div>
    </div>


    <div class="index-sq">
        <div class="wibsite-center">
            <div class="box-title">
                <div class="box-title-fl fl J-entire-tit">
                    <h2>
                        <span><b>整租·样板间</b>给你空间自主权</span>
                        <p>随意租，随意住，给你空间自主权 </p>
                    </h2>
                </div>
                <div class="box-title-fr fr J-title-1"><label is-muji="1" is-gyf="1" class="on">房间</label>
                <label is-muji="1" is-gyf="1">客厅</label><label is-muji="1" is-gyf="1">卫生间</label>
                <label is-muji="1" is-gyf="1">厨房</label></div>

            </div>

            <div class="sample-box J-sample-1">
                <div class="sample block">
                <div id="sampleYi0" class="sample-slide carousel slide" data-interval="false" data-ride="carousel">
                <ul class="sample-list carousel-inner">
                <li class="item active">
                <a href="https://www.dankegongyu.com/recommend-list/bj?rent_type=entire_rent">
                <img dalay-src="img/public-20180402-Ft8Cd_qKwRig0ZZ9w1pHvsyX1VDx.png" title="MUJI风样板间图片" src="img/public-20180402-Ft8Cd_qKwRig0ZZ9w1pHvsyX1VDx.png" alt="MUJI风样板间图片">
                </a>
                <p class="sample-name">安静地坐在沙发上享受着阳光带来的温暖<a class="inList" href="https://www.dankegongyu.com/room/bj/zMUJI%E9%A3%8E-c%E6%95%B4%E7%A7%9F.html">查看房源</a></p>
                </ul>               
                <div class="sample-btn sample-prev " href="#sampleYi0" data-slide="prev"></div>
                </div>
                
                
                <div class="sample-si">
                <div class="si" data-idx="1" data-toggle="modal" data-target="#picture-modal">
                <img class="m1 on" title="租房，整租，合租" dalay-src="https://public.wutongwan.org/public-20180402-FnxQM51y7sJecKx4n_ag2RuwBzS6" src="./main_files/public-20180327-FpEitcb1bwIGO4MOtIcEJ6a2vYGf">
                </div>
                
                <div class="si" data-idx="2" data-toggle="modal" data-target="#picture-modal">
                <img class="m1 on" title="租房，整租，合租" dalay-src="https://public.wutongwan.org/public-20180402-FmvPJmYPZNVess8Y-no1VazwtEqw" src="./main_files/public-20180327-FpEitcb1bwIGO4MOtIcEJ6a2vYGf">
                </div>
                
                <div class="si" data-idx="3" data-toggle="modal" data-target="#picture-modal">
                <img class="m1 on" title="租房，整租，合租" dalay-src="https://public.wutongwan.org/public-20180402-FltdR3gQXLj2K5kGOm_TDaJHcP-4" src="./main_files/public-20180327-FpEitcb1bwIGO4MOtIcEJ6a2vYGf">
                </div>               
                </div>                            
                </div>             
        </div>

        </div>
    </div>



    <div class="index-sq">
        <div class="wibsite-center">
            <div class="box-title">
                <div class="box-title-fl fl J-trade-tit">
                    <h2>
                        <span><b>蛋壳商圈</b>我们都住在这里</span>
                        <p>与你一起找寻不同的风景</p>
                    </h2>
                </div>
            </div>
            
            <div class="index-sqbox">
            
            <a key="01" href="http://www.dankegongyu.com/zhuanti/trade?city=bj&amp;trade=by" target="_blank">
            <img title="" src="img/public-20180102-FlPi6avVN3_B6KZw4qz1v8SUrppG.png" alt="蛋壳商圈图片">
            <div class="sqlist-bg">
            </div>
            <div class="sqlist-text">
            <label>北苑</label>
            <span>京北天然氧吧幸福生活</span>
            </div>
            </a>
            
            <a key="11" href="http://www.dankegongyu.com/zhuanti/trade?city=bj&amp;trade=hlg" target="_blank">
            <img title="" src="img/public-20180102-FtIDnzAcVND6r4Spiy2kIBEVX1qn.png" alt="蛋壳商圈图片">
            <div class="sqlist-bg">
            </div>
            <div class="sqlist-text">
            <label>欢乐谷</label>
            <span>住在欢乐谷是何种体验？</span>
            </div>
            </a>
            
            <a key="21" href="http://www.dankegongyu.com/zhuanti/trade?city=bj&amp;trade=lshq" target="_blank">
            <img title="" src="img/public-20180102-FmV4XbqZF2EsBKlhTdtYXba4ESf0.png" alt="蛋壳商圈图片">
            <div class="sqlist-bg"></div>
            <div class="sqlist-text">
            <label>立水桥</label>
            <span>5号线、13号线  交通便捷</span>
            </div>
            </a>
            
            <a key="31" href="http://www.dankegongyu.com/zhuanti/trade?city=bj&amp;trade=shd" target="_blank">
            <img title="" src="img/public-20180102-FjJOJV65fDkJ0_hkNKA4O7ThWi4x.png" alt="蛋壳商圈图片">
            <div class="sqlist-bg"></div>
            <div class="sqlist-text">
            <label>上地</label>
            <span>13号线·IT产业的摇篮</span>
            </div>
            </a>
            
            <a key="41" href="http://www.dankegongyu.com/zhuanti/trade?city=bj&amp;trade=shlzh" target="_blank">
            <img title="" src="img/public-20180102-Fm6pv2f1f-2yrTBgJanMs43jR6x1.png" alt="蛋壳商圈图片">
            <div class="sqlist-bg"></div>
            <div class="sqlist-text">
            <label>石榴庄</label>
            <span>10号线·生活便利</span>
            </div>
            </a>
            
            <a key="51" href="http://www.dankegongyu.com/zhuanti/trade?city=bj&amp;trade=tty" target="_blank">
            <img title="" src="img/public-20180102-Fu8TA_R70zlFTzIP1PmCIBWvXdgw.png" alt="蛋壳商圈图片">
            <div class="sqlist-bg"></div>
            <div class="sqlist-text">
            <label>天通苑</label>
            <span>北京追梦第一站</span></div>
            </a>
            
            </div>
        </div>
    </div>

    <div class="index-sq">
        <div class="wibsite-center">
            <div class="box-title">
                <div class="box-title-fl fl J-story-tit">
                    <h2>
                        <span><b>蛋壳故事</b>我们不一样</span>
                        <p>听他们的故事 结缘蛋壳</p>
                    </h2>
                </div>
            </div>
            <div class="storybox">
            <a key="01" href="https://www.dankegongyu.com/zhuanti/story?storyID=11" class="storylist s-l1" target="_blank">
            <img title="" src="img/public-20180914-FpeA3lVP6JxzsitBNE0uOrao5Ec7.png" alt="蛋壳故事">
            <div class="sl-text"><label>了解更多</label>
            <h3><span>有关「蛋壳业主」的核心7问</span></h3>
            <b></b>
            <p>众所周知，房源是租赁平台最头痛的问题，那么蛋壳公寓是凭借着什么“特殊能力”在短短3年间获得了这10多万业主的认可与信任？从「1间」到「170000间」，这不仅是量的积累更是互联网带来的质的飞跃。在和多名业主聊完之后，下面「7」个核心问题可能能够帮助诸多业主更快了解蛋壳。</p>
            </div>
            </a>
            <a key="11" href="https://www.dankegongyu.com/zhuanti/story?storyID=10" class="storylist s-l2" target="_blank">
            <img title="" src="img/public-20180914-FsyiHREnUg779mgwNBs0ibG8SrVK.png" alt="蛋壳故事">
            <div class="sl-text"><label>了解更多</label><h3><span>80后的自强“任性”生活</span></h3>
            <b></b>
            <p>据不完全统计，蛋壳公寓业主的主要人群，大多都是被80后劝说的父母一辈人，或者业主本身就是80后。那么，在蛋壳公寓当业主到底是一种怎样的体验？</p></div></a>
            <a key="21" href="https://www.dankegongyu.com/zhuanti/story?storyID=9" class="storylist s-l3" target="_blank">
            <img title="" src="img/public-20180914-FvGsjqkDxcLA_X4V7fSvDGByBltz.png" alt="蛋壳故事">
            <div class="sl-text"><label>了解更多</label>
            <h3><span>专属保洁工作人员的幸运</span></h3><b></b>
            <p>在这里，他学习到了保洁化学试剂的正确使用，收入还更稳定有保障，与此同时与蛋壳这家创业公司共同成长领略到了团队协作的能力等等，最重要的是，他得到了890名租客的肯定。</p>
            </div>
            </a>
            </div>
        
        
        </div>
    </div>

    <script>
    $('.index-boxa').click(function () {
    	
    });
    
        $('.wibsite-center a').click(function () {

            if($(this).attr('key') == '0'){
                name = '首页精选房源模块更多'
            }else{
                var mod = $(this).parents('.wibsite-center').find('.box-title').find('div').find('span').text()
                if(mod.indexOf('精选房源') != -1){
                    name = '首页精选房源模块'
                }
                if(mod.indexOf('合租') != -1){
                    name = '首页合租样板间模块'
                }
                if(mod.indexOf('整租') != -1){
                    name = '首页整租样板间模块'
                }
                if(mod.indexOf('蛋壳商圈') != -1){
                    name = '首页蛋壳商圈模块'
                }
                if(mod.indexOf('蛋壳故事') != -1){
                    name = '首页蛋壳故事模块'
                }
            }
            saMethod.ClickingHomepage(name, $(this).attr('key') || '', '', '')
        })

        $('.carousel-inner').on('click', '.item', function () {
            saMethod.Broadcastadvertisement('首页频道', $(this).find('a').attr('key'), $(this).find('a').attr('title'), '', window.location.href)
        })

        sa.quick('autoTrack', {
            'page_type': '首页频道',
            //'source_type': '',
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
    
    </script>

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
<script type="text/javascript">
	  /*退出登录*/
	
	$(".dklogout").on("click",function(){
        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': 'cMGg0DU6u6BqDElQzOSlFJ4HWZucte9Fu2xbIZb0'
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
    <div class="modal" id="picture-modal" tabindex="-1" role="dialog" aria-labelledby="picture-modal-label" aria-hidden="true">
        <div class="modal-dialog imgroom">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title text-center" id="picture-modal-label">样板间展示</h4>
                </div>
                <div class="modal-body">
                    <article class="single-project">
                        <div class="row txtbbs">
                            <div class="col-md-3">
                                <ul class="list-unstyled project-info">
                                    <li><strong>版&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本：</strong><span class="pull-right J-version"></span></li>
                                    <li><strong>主设计师：</strong><span class="pull-right J-designer" style="letter-spacing: 2px"></span></li>
                                </ul>
                            </div>
                            <div class="col-md-9">
                                <p class="J-picture-desc"></p>
                            </div>
                        </div>
                        <div id="Carousel" class="carousel slide">
                            <div class="carousel-inner"></div>
                            <ol class="carousel-indicators"></ol>
                            <a class="carousel-control left" href="https://www.dankegongyu.com/#Carousel" data-slide="prev"></a>
                            <a class="carousel-control right" href="https://www.dankegongyu.com/#Carousel" data-slide="next"></a>
                        </div>
                        <div class="place J-place">
                            <span>
                           
                            </span>
                            <a href="https://www.dankegongyu.com/">查看房源</a>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>




<ins id="newBridge"><!-- target: nodeBoard --><ins class="nb-nodeboard-base nb-nodeboard-position-base nb-nodeboard-left-bottom nb-hide" id="nb_nodeboard"><ins class="nb-nodeboard-contain-base nb-nodeboard-contain"><ins class="nb-nodeboard-top nb-nodeboard-top-9"><ins class="nb-head-title">请您留言</ins><ins class="nb-nodeboard-close" id="nb_nodeboard_close" data-type="min"></ins></ins><ins id="nb_nodeboard_text" class="nb-nodeboard-text"><p class="nb-nodeboard-company">蛋壳公寓</p><p class="nb-nodeboard-link">您想在哪里找房，请在下面留言吧</p></ins><form id="nb_nodeboard_form" autocomplete="off" class="nb-board-form" action="https://p.qiao.baidu.com/cps//bookmanage/saveBook.action?userId=10956140" method="post" accept-charset="utf-8"><ins id="nb_nodeboard_set" class="nb-nodeboard-set"><ins class="nb-nodeboard-content"><textarea id="nb-nodeboard-set-content-js" name="content" data-ph="请在此输入留言内容，我们会尽快与您联系。（必填）" placeholder="请在此输入留言内容，我们会尽快与您联系。（必填）" class="nb-nodeboard-set-content nb-nodeboard-param"></textarea></ins><ins class="nb-nodeboard-name" style="z-index:5;"><ins class="nb-nodeboard-icon nodeName"></ins><input id="nb_nodeboard_set_name" data-write="0" name="visitorName" maxlength="30" class="nb-nodeboard-input nb-nodeboard-param" type="text" data-ph="姓名" placeholder="姓名"></ins><ins class="nb-nodeboard-name" id="nb_nodeboard_phone" style="z-index:4;"><ins class="nb-nodeboard-icon nodePhone"></ins><input id="nb_nodeboard_set_phone" name="visitorPhone" maxlength="30" class="nb-nodeboard-input nb-nodeboard-param" data-write="1" type="text" data-ph="电话（必填）" placeholder="电话（必填）"></ins><ins class="nb-nodeboard-ext-select" style="z-index:1;"><ins class="nb-nodeboard-select-title">租房预算</ins><ins class="nb-nodeboard-select-wrap" id="node_select_wrap_1"><ins class="custom-select-main" style="width: 0px;"><ins class="custom-select-title" style="width: 218px;"><ins class="custom-select-title-content">1500-2000</ins><input class="custom-select-title-input nb-nodeboard-param" name="item0" style="display: none;"></ins></ins></ins></ins></ins></form><ins class="nb-nodeboard-success" id="nb_nodeboard_success"><ins class="nb-success-box"><ins class="nb-success-icon"></ins><ins class="nb-success-title" id="nb_node_messagetitle">感谢留言</ins><ins class="nb-success-content" id="nb_node_messagecontent">我们会尽快与您联系</ins><ins id="nb_nodeboard_return" class="nb-sucess-close">关闭</ins></ins></ins><ins class="nb-nodeboard-send" id="nb_node_contain"><ins id="nb_nodeboard_send" class="nb-nodeboard-send-btn nb-nodeboard-send-btn-9">发送</ins></ins></ins><ins class="custom-select-body" style="width: 218px; z-index: 99; display: none;"><ins class="custom-select-body-content"><ins class="custom-select-body-list" style="max-height: 300px;"><ins class="custom-select-body-list-cont"><ins class="custom-select-list-item" value="">1500-2000</ins><ins class="custom-select-list-item" value="">2000-2500</ins><ins class="custom-select-list-item" value="">2500-3000</ins><ins class="custom-select-list-item" value="">3000以上</ins></ins></ins></ins></ins></ins><!-- end --><!-- target: invite --><ins class="nb-invite-wrap nb-invite-wrap-base nb-position-base nb-middle  " id="nb_invite_wrap" style="width:400px;display:none;margin-left: -200px;margin-top: -88px;"><ins class="nb-invite-body nb-invite-skin-0" style="height:175px;;"><ins class="nb-invite-tool nb-invite-tool-base" id="nb_invite_tool" style=""></ins><ins class="nb-invite-text nb-invite-text-base"><ins class="nb-invite-welcome nb-invite-welcome-base nb-show" id="nb_invite_welcome"><p style="color: #fff">欢迎来到本网站，请问有什么可以帮您？</p></ins></ins><ins class="nb-invite-btn-base nb-invte-btns-0"><ins class="nb-invite-cancel nb-invite-cancel-base" id="nb_invite_cancel">稍后再说</ins><ins class="nb-invite-ok nb-invite-ok-base" id="nb_invite_ok">现在咨询</ins></ins></ins></ins><!-- end --></ins></body></html>