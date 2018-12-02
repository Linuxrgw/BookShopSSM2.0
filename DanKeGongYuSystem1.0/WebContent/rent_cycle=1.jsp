   <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>北京月租_北京月租房源信息_北京月租房-北京蛋壳公寓官网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name='keywords' content='北京月租,北京房屋月租,北京月租房源信息,北京月租房'>
    <meta name="description"
          content="北京蛋壳公寓官网为您提供北京市月租房源信息.找北京月租房,合租房,整租房,就上蛋壳公寓.蛋壳公寓让租房变的简单快乐"/>
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" >
    <!-- Set render engine for multi engine browser -->
    <meta name="renderer" content="webkit">
    <!-- Disable Baidu Siteapp -->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link media="all" type="text/css" rel="stylesheet" href="css/bootstrap-ec3bb52a00.min.css" >

    <link media="all" type="text/css" rel="stylesheet" href="css/swiper-0b941af5db.min.css" >

    <link media="all" type="text/css" rel="stylesheet" href="css/common-4ce4e00253.css" >


    <script src="js/jquery-2f6b11a7e9.min.js" tppabs="https://s1.wutongwan.org/build/bower/jquery/dist/jquery-2f6b11a7e9.min.js"></script>

    <script src="js/bootstrap-5869c96cc8.min.js" tppabs="https://s2.wutongwan.org/build/bower/bootstrap/dist/js/bootstrap-5869c96cc8.min.js"></script>

    <script src="swiper-3-cd2bffb7f2.3.1.min.js" tppabs="https://s1.wutongwan.org/build/js/pc_home/swiper-3-cd2bffb7f2.3.1.min.js"></script>

    <script src="md5-ea27c6f755.min.js" tppabs="https://s1.wutongwan.org/build/js/md5-ea27c6f755.min.js"></script>

    <script src="city-b83380172d.js" tppabs="https://s1.wutongwan.org/build/js/pc_home/city-b83380172d.js"></script>

    <script src="public-0fd418fb37.js" tppabs="https://s3.wutongwan.org/build/js/website/public-0fd418fb37.js"></script>

    <script src="sa-56cab3188f.js" tppabs="https://s1.wutongwan.org/build/js/sensors-analytics/sa-56cab3188f.js"></script>

    <script src="sa-method-b38d9d9979.js" tppabs="https://s3.wutongwan.org/build/js/sensors-analytics/sa-method-b38d9d9979.js"></script>

        <meta name="viewport" content="width=750,user-scalable=0">
    <link media="all" type="text/css" rel="stylesheet" href="css/pc_rent_month-8c63e6e410.css" tppabs="https://s3.wutongwan.org/build/css/pc_rent_month-8c63e6e410.css">

    <script>
        var tracker = {
            channel: '' || null,
            platform: "pc",
            city: ""
        };
    </script>

    
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'analytics.js'/*tpa=https://www.google-analytics.com/analytics.js*/, 'ga');

        ga('create', 'UA-67874461-1', 'auto');
        ga('set', 'dimension1', tracker.platform);
        ga('set', 'dimension2', tracker.channel);
        ga('set', 'dimension3', tracker.city);
        ga('send', 'pageview');
    </script>
    
    
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "hm.js-814ef98ed9fc41dfe57d70d8a496561d"/*tpa=https://hm.baidu.com/hm.js?814ef98ed9fc41dfe57d70d8a496561d*/;
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1271579284'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1271579284%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
    <style>
        [id^="cnzz_stat_icon_"] {
            display: none;
        }
    </style>
    <script> (function () {
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'push.js'/*tpa=https://zz.bdstatic.com/linksubmit/push.js*/;
            }
            else {
                bp.src = 'push-1.js'/*tpa=http://push.zhanzhang.baidu.com/push.js*/;
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })(); </script>
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

        //sa.quick('autoTrack');

    
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
	<jsp:include page="/common/head.jsp"/>

<div class="website-main">
        <div class="p-rent-month">
    	<!--banner-->
    	 <div class="m-mode-ban">
    	 	 <div class="ban-text"> 
    	 	 	 <span class="s1">月租月轻松</span>
    	 	 	 <span class="s2">虽短暂也美好</span>
    	 	 </div>
    	 	  <!--search-->
    	 	 <div class="search">
	            <div class="search-box">
	                <div class="search-select">
	                    <span>月租</span>
	                </div>
	                <input class="search-box" type="text" placeholder="例如: 3D全景、10号线、四惠、天通苑等" autocomplete="off">
	                <div class="search-btn">搜索</div>
					<script>
						window.onload = function () {
							$('.search-btn').click(function () {
								saMethod.Clickingsearchitem('点击搜索按钮', window.location.href)
							})
							$('.search-box').click(function () {
								saMethod.Clickingsearchitem('点击搜索框', window.location.href)
							})
						}
					</script>
	            </div>
	            <a href="javascript:if(confirm(%27https://www.dankegongyu.com/map/bj?from=month  \n\nThis file was not retrieved by Teleport Ultra, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon.  \n\nDo you want to open it from the server?%27))window.location=%27https://www.dankegongyu.com/map/bj?from=month%27" tppabs="https://www.dankegongyu.com/map/bj?from=month" target="_blank"
	               class="search-map-btn">地图找房</a>
	        </div>
	        <!--search end-->
    	 </div>
    	 <!--banner end-->
    	 
    	 <!--advantage-->
    	 <div class="m-advage w1032 mtop70 clearfix">
    	 	   <div class="advage-b i1">
				   <h3 class="tit"><strong>指定房源</strong>，灵活自选</h3>
				   <p class="desc">30天～365天租期任选(以合同约定为准)</p>
    	 	   </div>
    	 	   
    	 	   <div class="advage-b i2">
    	 	   	   <h3 class="tit">品质服务，放心居住</h3>
    	 	   	   <p class="desc">保洁、维修、密码锁，保障您的生活品质及安全</p>
    	 	   </div>
    	 	   
    	 	   <div class="advage-b i3">
    	 	   	   <h3 class="tit">性价比高</h3>
    	 	   	   <p class="desc">全新房屋，全新生活，给您提供精选高品质房源</p>
    	 	   </div>
    	 </div>
    	 
    	 <div class="m-joint mtop50">
        	 <h1 class="tit dk-blue">推荐精选月租房源</h1>
        	 <p class="sub mtop20">虽然短暂，也美好；月租也要有“家”的感觉</p>
        </div>
    	 <!--advantage end-->
         <div class="m-room js-month-room w1032 mtop50 clearfix">
        	 <!--月租房列表-->
        </div>
        
        <div class="ele-btn js-month-btn dis-n center mtop20">
        	<a href="">查看更多</a>
        </div>
    </div>
    
    <!-- 有新房源通知我 -->
    <div class="modal fade" id="myroom" tabindex="-1" role="dialog" aria-labelledby="myWeixinLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm onlineroom">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">
                        有新房源通知我
                    </h4>
                </div>
                <div class="modal-body">
    <form method="POST" class="form-horizontal">
        <input type="hidden" name="_token" value="FDJseVBN5iOes3XlWCXJkMTnDQAlIwgIpdiubDAR">
        <input type="hidden" name="type" id="type" value="list">
        <input type="hidden" name="citycode" id="citycode" value="bj">
        <div class="state_tmobilex_box">
                            <div class="sta_tx_b clearfix">
                    <div class="sta_tx_b1">
                        <span>*</span>您的需求：
                    </div>
                    <div class="sta_tx_b2">
                        <textarea id="note" name="note" cols="" rows="" class="input_txt"
                                  placeholder="我在国贸工作，我想找10号线附近的有独立卫生间，价格在2300左右的房子。" maxlength="80"></textarea>
                    </div>
                </div>
                        <input type="hidden" name="room_id" id="room_id" value="">

            <div class="sta_tx_b clearfix">
                <div class="sta_tx_b1">
                    <span>*</span>您的姓名：
                </div>
                <div class="sta_tx_b2">
                    <input type="text" class="text350" maxlength="20" name="name" autocomplete="off" id="name" placeholder="请输入您的姓名"/>
                </div>
            </div>
            <div class="sta_tx_b clearfix">
                <div class="sta_tx_b1">
                    <span>*</span>联系电话：
                </div>
                <div class="sta_tx_b2">
                    <input type="text" class="text350" name="mobile" id="mobile" autocomplete="off" maxlength="11" placeholder="请输入您的手机号"/>
                </div>
            </div>
            <div class="sta_tx_b clearfix">
                <div class="sta_tx_b1">
                    <span>*</span>图片验证码：
                </div>
                <div class="sta_tx_b2">
                    <input type="text" class="text220" name="piccode" id="piccode" placeholder="请输入图片验证码" maxlength="6">
                    <img src="img/captcha.jpg" />
                    <a href="javascript:void(0)">换一张</a>
                </div>
            </div>
            <div class="sta_tx_b clearfix">
                <div class="sta_tx_b1">
                    <span>*</span>验证码：
                </div>
                <div class="sta_tx_b2">
                    <input type="text" class="text220" name="code" id="messgecode" autocomplete="off" placeholder="请输入短信验证码" maxlength="6">
                    <b>获取验证码</b>
                    <strong>60s重新获取</strong>
                </div>
            </div>

            
            <div class="pclogintip"></div>
            <div class="sub_tab">
                <div class="pcloginbtnbox">
                    <a href="javascript:void(0)" class="huise">立即预约</a>
                    <a href="javascript:void(0)" class="chengse" id="click_submit_order" >立即预约</a>
                </div>

            </div>
        </div>
    </form>
    <div class="modal-body text-center gui9 telred">
        收不到短信？
        拨打 <a href="tel:400-110-1027">400-110-1027</a> 联系客服MM电话预约
    </div>

    <div class="succesbox_yezhu" style="display: none">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <div class="wt_detail">
            <div class="wt_explain">
                <div class="wt_img"></div>
                <h2 class="wt_title">提交委托成功！</h2>
                <h3 class="wt_sub_title">客服会在24小时内联系您，请不要拒接座机，
                    保持电话畅通噢！</h3>
            </div>
            <div class="wt_dec_title">做省心房东，只需四步<div class="wt_line"></div></div>
            <div class="wt_icons">
                <div class="wt_yxgt"></div>
                <div class="wt_arrow"></div>
                <div class="wt_skcl"></div>
                <div class="wt_arrow"></div>
                <div class="wt_hzqy"></div>
                <div class="wt_arrow"></div>
                <div class="wt_zxsy"></div>
            </div>
        </div>
        <div class="wt_ewm">
            <div class="wt_ewm_image"></div>
            <div class="wt_sm">扫一扫</div>
            <div class="wt_sm">下载<span>蛋壳公寓</span></div>
        </div>
    </div>


    <div class="succesbox_detail" style="display: none">
        <button type="button" class="close"
                data-dismiss="modal" aria-hidden="true">
            &times;
        </button>
        <div class="wt_detail">
            <div class="wt_explain">
                <div class="wt_img"></div>
                <h2 class="wt_title">预约看房提交成功！</h2>
                <h3 class="wt_sub_title">客服会在24小时内联系您，请不要拒接座机，
                    保持电话畅通噢！</h3>
            </div>
            <div class="wt_dec_title">让租房变得简单和快乐<div class="wt_line"></div></div>
            <div class="wt_icons">
               <div class="detail_img_logo"></div>
            </div>
        </div>
        <div class="wt_ewm">
            <div class="wt_ewm_image"></div>
            <div class="wt_sm">扫一扫</div>
            <div class="wt_sm">下载<span>蛋壳公寓</span></div>
        </div>
    </div>
</div>
    <script src="js/jquery-8fa48925b6.min.js" tppabs="https://s1.wutongwan.org/build/js/pc_home/jquery-8fa48925b6.min.js"></script>

<style type="text/css">
    .close{
        position: relative;
        z-index:10;
    }

    .succesbox_yezhu{
        width: 705px;
        height: 340px;
        margin-top: -20px;
        margin-left: -15px;
    }

    .succesbox_detail{
        width: 705px;
        height: 340px;
        margin-top: -20px;
        margin-left: -21px;
    }

    .wt_img{
        width: 98px;
        height: 75px;
        display: inline-block;
        float: left;
        background: url("img/public-20180411-Fswx3jxRozhi72aI37XjAG10LdU5.png")/*tpa=https://public.wutongwan.org/public-20180411-Fswx3jxRozhi72aI37XjAG10LdU5*/ no-repeat;
    }

    .wt_detail{
        padding-top: 50px;
        float: left;
        padding-left: 50px;
        width: 515px;
        text-align: left;
    }

    .wt_title{
        color: #3dbcc6;
        font-size: 30px;
        margin-left: 23px;
        display: inline;
    }

    .wt_sub_title{
        font-size: 14px;
        color: #999999;
        display: inline-block;
        width: 300px;
        margin-left: 23px;
        font-weight: bold;
        margin-top: 5px;
        line-height: 20px;
    }

    .wt_dec_title{
        margin-top: 50px;
        color: #333333;
        font-size: 14px;
        font-weight: bold;
    }

    .wt_line{
        width: 260px;
        height: 2px;
        display: inline-block;
        background: #dbdbdb;
        position: relative;
        top: -5px;
        margin-left: 15px;
    }

    .wt_icons{
        margin-top: 35px;
    }

    .wt_icons div{
        display: inline-block;
        margin-right: 30px;
    }

    .wt_icons .wt_arrow{
        margin-bottom: 20px;
    }

    .wt_yxgt{
        width: 48px;
        height: 55px;
        background: url("img/public-20180411-FoHSvtZR3Dge1l_n3UsyfCc4nGqD.png")/*tpa=https://public.wutongwan.org/public-20180411-FoHSvtZR3Dge1l_n3UsyfCc4nGqD*/ no-repeat;
    }

    .wt_skcl{
        width: 48px;
        height: 55px;
        background: url("img/public-20180411-Fme6-JrLoEvpg9bActhx9A4hwf8T.png")/*tpa=https://public.wutongwan.org/public-20180411-Fme6-JrLoEvpg9bActhx9A4hwf8T*/ no-repeat;
    }

    .wt_hzqy{
        margin-bottom: 3px;
        width: 48px;
        height: 55px;
        background: url("img/public-20180411-FqfpklDBN2ipzm3D-nXeYmajtSig.png")/*tpa=https://public.wutongwan.org/public-20180411-FqfpklDBN2ipzm3D-nXeYmajtSig*/ no-repeat;
    }

    .wt_zxsy{
        width: 48px;
        height: 55px;
        background: url("img/public-20180411-FvOEKxzD2kj1nS8iyHooljd106qX.png")/*tpa=https://public.wutongwan.org/public-20180411-FvOEKxzD2kj1nS8iyHooljd106qX*/ no-repeat;
    }

    .wt_arrow{
        width: 9px;
        height: 15px;
        background: url("img/public-20180411-FqYCHQht6hVEGMIZEkfKutxxsh-I.png")/*tpa=https://public.wutongwan.org/public-20180411-FqYCHQht6hVEGMIZEkfKutxxsh-I*/ no-repeat;
    }

    .wt_ewm{
        width: 190px;
        height: 100%;
        float: right;
        text-align: center;
        background: #f5f5f5;
    }

    .wt_ewm_image{
        margin:0 auto;
        width: 126px;
        height: 126px;
        margin-top: 100px;
        margin-bottom: 10px;
        background: url("img/public-20180411-FqCXOU8mBtSDPUHW3sUyLyNppiE4.png")/*tpa=https://public.wutongwan.org/public-20180411-FqCXOU8mBtSDPUHW3sUyLyNppiE4*/ no-repeat;
    }

    .wt_sm{
        font-size: 16px;
        margin-top: 5px;
        color: #999999;
    }

    .wt_sm span{
        color: #3dbcc6;
    }

    .succesbox_detail .wt_ewm{
        margin-top: -21px;
        position: relative;
        left: 5px;
        border-radius: 0 5px 5px 0;
    }

    .detail_img_logo{
        margin-left: 100px;
        width: 227px;
        height: 77px;
        background: url("img/public-20180412-FvRpvB1Fa4W8-qW-eHiUni3f1TDM.png")/*tpa=https://public.wutongwan.org/public-20180412-FvRpvB1Fa4W8-qW-eHiUni3f1TDM*/ no-repeat center top;
    }

    input::-webkit-contacts-auto-fill-button {
        visibility: hidden;
        display: none !important;
        pointer-events: none;
        position: absolute;
        right: 0;
    }


    /*有新房源通知我*/
    .onlineroom {
        width: 600px;
    }

    .modal-header {
        padding: 15px;
        border-bottom: 1px solid #e5e5e5;
    }

    .modal-header .close {
        margin-top: -2px;
    }

    button.close {
        -webkit-appearance: none;
        padding: 0;
        cursor: pointer;
        background: 0 0;
        border: 0;
    }

    .close {
        float: right;
        font-size: 21px;
        font-weight: 700;
        line-height: 1;
        color: #000;
        text-shadow: 0 1px 0 #fff;
        filter: alpha(opacity=20);
        opacity: .2;
    }

    .onlineroom .modal-body, .modal-body {
        padding-top: 20px;
        text-align: center;
        font-size: 14px;
    }

    .sta_tx_b {
        padding: 10px 0;
        overflow: hidden;
    }

    .sta_tx_b1 {
        float: left;
        width: 150px;
        height: 50px;
        color: #666666;
        text-align: right;
        /* font-weight: bold; */
        font-size: 16px;
        line-height: 50px;
    }

    .sta_tx_b1 span {
        padding-right: 4px;
        color: #ff643a;
    }

    .text350 {
        float: left;
        width: 348px;
        height: 50px;
        line-height: 50px;
        border: 1px solid #c4c4c4;
        border-radius: 3px;
        color: #333;
        text-indent: 10px;
        font-size: 16px;
    }

    .text220 {
        float: left;
        width: 178px;
        height: 48px;
        border: 1px solid #c4c4c4;
        border-radius: 2px;
        color: #333;
        text-indent: 10px;
        font-size: 14px;
        line-height: 48px;
    }

    .sta_tx_b2 {
        float: left;
        width: 350px;
    }
    .sta_tx_b2 img{
        float: left;
        width:102px;
        height: 48px;
        cursor: pointer;
    }
    .sta_tx_b2 a{
        line-height:48px;
        float: left;
        margin-left: 5px;
        color: #337ab7;
        width: 58px;
        text-align: center;
    }

    .sta_tx_b2 b, .sta_tx_b2 strong {
        float: right;
        width: 165px;
        height: 48px;

        color: #fff;
        text-align: center;
        font-size: 16px;
        line-height: 53px;
        cursor: pointer;
    }

    .sta_tx_b2 textarea {
        width: 348px;
        border: 1px solid #e6e6e6;
        border-radius: 2px;
        resize: none;
        height: 100px;
        font-size: 16px;
        padding: 10px;
        margin-top: 10px;
    }

    .sta_tx_b2 b {
        display: block;
        background: #4BB4BB;
    }

    .sta_tx_b2 strong {
        display: none;
        background: #dddddd;
    }

    .pclogintip {
        display: block;
        height: 35px;
        color: #f00;
        text-align: center;
        font-size: 14px;
        line-height: 25px;
    }

    .sub_tab {
        overflow: hidden;
        width: 100%;
    }

    .pcloginbtnbox {
        display: block;
        overflow: hidden;
        width: 348px;
        margin: 0 auto;
    }

    .pcloginbtnbox a {
        height: 45px;
        -webkit-border-radius: 6px;
        -moz-border-radius: 6px;
        border-radius: 6px;
        color: #fff;
        text-align: center;
        font-size: 18px;
        line-height: 45px;
    }

    .huise {
        display: block;
        background: #ddd;
    }

    .chengse {
        display: none;
        background: #4BB4BB;
    }

    .telred a {
        color: #FF3300;
        font-weight: bold;
    }

    /*有新房源通知我 end*/
</style>
<script>
    $(function () {
        //手机号
        var newMobile = /^1[3-9]\d{9}$/;
        var roomType = $('#type').val();
        var cityCode = $('#citycode').val();
        var data = {};
        var tipText = $('.pclogintip');

        var flag = 0; // 获取验证码次数标识
        var errorFlag = 0 //获取失败标识
        var mobilFlag = false // 获取频繁标记
        var preMobile = ''; // 上一次手机号

        // 初始化图形验证码（隐藏）
        $('.sta_tx_b:nth-child(4)').hide();
        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': 'FDJseVBN5iOes3XlWCXJkMTnDQAlIwgIpdiubDAR'
    },
    cache: false,
    async: false,
});        // 登录回显手机号
        $.ajax({
            type: 'GET',
            url: '/web-api/user/info',
            async: false,
            error: function(msg) {
                console.log(msg)
            },
            success: function(data) {
                $('#mobile').val(data.data.mobile)
            }
        });

        //手机号是否发生改变
        $('#mobile').keyup(function () {
            if (preMobile && preMobile == $(this).val() && errorFlag != 1) { 
                flag = 2
                $('.sta_tx_b:nth-child(4)').hide();
            } else if (preMobile && preMobile != $(this).val() && errorFlag != 1) {
                flag = 0
                $('.sta_tx_b:nth-child(4)').hide();
            }
        })

        if (roomType == 'index') {
            $('.telred').html('收不到短信？ 拨打 <a href="tel:400-062-8688">400-062-8688</a> 联系客服MM电话委托');
            $('.pcloginbtnbox a').text('立即委托')
        }
        //提交委托
        $('.pcloginbtnbox a.huise').click(function () {
            tipText.text('请完善您的资料!');
        });
        $('.sta_tx_b input').keyup(function () {
            tipText.text('');
            var name = $('#name').val();
            var mobile = $('#mobile').val();
            var messgeCode = $('#messgecode').val();
            var picCode = $('#piccode').val();
            if(flag >=2){
                if (name !== '' && mobile !== '' && messgeCode !== '' && picCode !== '') {
                    switch (roomType) {
                        case "index" :
                            var city = $('#city').val();
                            var areaName = $('#areaname').val();
                            if (city != '' && areaName != '') {
                                btnShow();
                            } else {
                                btnHide();
                            }
                            break;
                        case "detail":
                            var note = $('#note').val();
                            if (note != '') {
                                btnShow();
                            } else {
                                btnHide();
                            }
                            break;
                        case "list":
                            btnShow();
                            break;
                    }
                } else {
                    btnHide();
                }
            } else {
                if (name !== '' && mobile !== '' && messgeCode !== '') {
                    switch (roomType) {
                        case "index" :
                            var city = $('#city').val();
                            var areaName = $('#areaname').val();
                            if (city != '' && areaName != '') {
                                btnShow();
                            } else {
                                btnHide();
                            }
                            break;
                        case "detail":
                            var note = $('#note').val();
                            if (note != '') {
                                btnShow();
                            } else {
                                btnHide();
                            }
                            break;
                        case "list":
                            btnShow();
                            break;
                    }
                } else {
                    btnHide();
                }
            }

        });
        //获取验证码
        $('.sta_tx_b2 b').click(function () {
            var codeFlag = false
            var timer = 60;
            var mobile = $('#mobile').val();
            preMobile = mobile;
            var piccode = $('#piccode').val();
            if (!newMobile.test(mobile)) {
                tipText.text('请输入正确的手机号码！');
                return false;
            } else {
                flag++
            }
            if(flag >= 2){
                $('.sta_tx_b:nth-child(4)').show();
                if(flag == 2 && !mobilFlag) $('.sta_tx_b2 a').click();
                if(piccode == ''){
                    tipText.text('请输入图片验证码！');
                    return false;
                } else {
                    $.ajax({
                        type: 'POST',
                        url: "https://www.dankegongyu.com/collect/img-code",
                        data: {'mobile': mobile, 'verify_code': piccode},
                        async: false,
                        error: function(msg) {
                            alert("提交失败，请退出重试。");
                            if(roomType == 'index'){
                                saMethod.GetVerifyingCode('立即委托', '立即委托', false)
                            }else if(roomType == 'detail'){
                                saMethod.GetVerifyingCode('预约看房', '预约看房', false)
                            }
                            return
                        },
                        success: function (data) {
                            if (data.msg == '验证码不正确') {
                                $('.sta_tx_b2 a').click();
                                $('#piccode').val('')
                                codeFlag = true
                                tipText.text('图片验证码不正确!');
                            }
                            if(roomType == 'index'){
                                saMethod.GetVerifyingCode('立即委托', '立即委托', true)
                            }else if(roomType == 'detail'){
                                saMethod.GetVerifyingCode('预约看房', '预约看房', true)
                            }
                        }
                    });
                }
            }
            //widget include

            if(codeFlag) return

            $.ajax({
                type: 'POST',
                url: "https://www.dankegongyu.com/collect/send-text-verify-code",
                data: {'mobile': mobile},
                async: false,
                error: function(msg) {
                    flag--;
                    errorFlag = 1;
                    console.log(msg)
                    if(roomType == 'index'){
                        saMethod.GetVerifyingCode('委托页', '立即委托', false)
                    }else if(roomType == 'detail'){
                        saMethod.GetVerifyingCode('预约看房页', '预约看房', false)
                    }
                },
                success: function (data) {
                    if(data.msg == '验证码发送频繁'){
                        $('.sta_tx_b:nth-child(4)').show();
                        $('.sta_tx_b2 a').click();
                        mobilFlag = true;
                        tipText.text('请输入图片验证码!');
                        return
                    }
                    if (!data['success']) {
                        $('.sta_tx_b2 a').click();
                        return
                    }

                    if(roomType == 'index'){
                        saMethod.GetVerifyingCode('立即委托页', '立即委托', true)
                    }else if(roomType == 'detail'){
                        saMethod.GetVerifyingCode('预约看房页', '预约看房', true)
                    }

                    $('.sta_tx_b2 b').hide();
                    $('.sta_tx_b2 strong').css('display', 'block').text(timer + 's重新获取');
                    //获取接口
                    var tim = setInterval(function () {
                        timer--;
                        $('.sta_tx_b2 strong').text(timer + 's重新获取');
                        if (timer == 0) {
                            clearInterval(tim);
                            $('.sta_tx_b2 strong').hide();
                            $('.sta_tx_b2 b').css('display', 'block').text('重新获取');
                        }
                    }, 1000)
                },
            });

        });

        //提交
        $('.pcloginbtnbox a.chengse').click(function () {
            var name = $('#name').val();
            var mobile = $('#mobile').val();
            var smsCode = $('#messgecode').val();
            if (!newMobile.test(mobile)) {
                tipText.text('请输入正确的手机号码！');
                return false;
            }
            tipText.text('');
            switch (roomType) {
                case "index" :
                    var areaName = $('#areaname').val();
                    data = {name: name, mobile: mobile, sms_code: smsCode, type: 'index', areaname: areaName};
                    break;
                case "detail":
                    var roomId = $('#room_id').val();
                    data = {name: name, mobile: mobile, sms_code: smsCode, type: 'detail', room_id: roomId};
                    break;
                case "list":
                    var note = $('#note').val();
                    var source = '官网';
                    data = {name: name, mobile: mobile, sms_code: smsCode, type: 'detail', note: note, source: source};
                    break;
            }
            $.ajax({
                type: "POST",
                url: "https://www.dankegongyu.com/collect/ajax-info/bj",
                data: data,
                async: false,
                error: function (msg) {
                    alert("输入错误，请重新输入");
                    if(roomType == 'index'){
                        saMethod.EntrustRoomButton($('#name').val(), $('#mobile').val(), $('#areaname').val(), false)
                    }else if(roomType == 'detail'){
                        saMethod.RoomreservationButton('找房频道', '房源详情页', '', '', $('#room_id').val(), '', $('#name').val(), $('#mobile').val(), false)
                    }
                },
                success: function (data) {
                    // 判断是否提交成功
                    if (!data.success) {
                        $('.sta_tx_b2 a').click();
                        $('#piccode').val('');
                        $('.pclogintip').text(data['msg']);
                        return false;
                    } else {

                        if(document.URL.indexOf('yezhu') !== -1){
                            // 委托框隐藏
                            $("#myroom").fadeOut(200);

                            // 成功提示框显示
                            $(".success-layer-wrap").show();
                            setTimeout(function () {
                                $(".success-inner").css({
                                    transform: "translate(0,0)"
                                });
                                setTimeout(function () {
                                    $(".success-inner")[0].style.opacity = 1;
                                },300);
                            },50)

                            // 神策
                            saMethod.EntrustRoomButton($('#name').val(), $('#mobile').val(), $('#areaname').val(), true)
                        }else{
                            $('#myroom .onlineroom').css({'width':'705px'});
                            $('.modal-body').css({'width':'705px','height':'340px'});
                            $('.form-horizontal,.gui9.telred').hide();
                            $('.succesbox_detail').show();
                            $('.modal-header').hide();
                            
                            // 神策
                            saMethod.RoomreservationButton('找房频道', '房源详情页', '', '', $('#room_id').val(), '', $('#name').val(), $('#mobile').val(), true)
                        }

                    }
                }
            });
        });

        //换验证图片
        $('.sta_tx_b2 a,.sta_tx_b2 img').click(function () {
            var timestamp = new Date().getTime();
            $('.sta_tx_b2 img').attr('src', '/get-img-code/90/30' + "?mobile=" + $('#mobile').val() + "&time=" + new Date().getTime() );
        });
        $('.text350').click(function () {
            if(roomType === 'index'){
                saMethod.ClickPhoneInput('立即委托')
            }else if(roomType === 'detail'){
                saMethod.ClickPhoneInput('立即预约')
            }
            
        })

    });
    function btnShow() {
        $('.pcloginbtnbox a.huise').hide();
        $('.pcloginbtnbox a.chengse').css('display', 'block');
    }
    function btnHide() {
        $('.pcloginbtnbox a.chengse').hide();
        $('.pcloginbtnbox a.huise').css('display', 'block');
    }
</script>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</div>

<!-- 导入尾部文件 -->
	<jsp:include page="/common/tail.jsp"/>
<script type="text/javascript">
    /*退出登录*/

    $(".dklogout").on("click",function(){
        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': 'FDJseVBN5iOes3XlWCXJkMTnDQAlIwgIpdiubDAR'
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

    
    getCityList('北京', 'bj');
    getDircList('北京', 'bj', '')
    getBlockList('北京', 'bj', '')
    getPlotList('北京', 'bj', '')

</script>
<!--APP推广层 end-->
    <script src="js/jquery-8fa48925b6.min.js" tppabs="https://s1.wutongwan.org/build/js/pc_home/jquery-8fa48925b6.min.js"></script>

    <script type="text/javascript">
       var prentmonth = {
      	 init:function(){
       	  	this.initCity();
       	  },
       	  dk:{
       	  	cityCode:$('input[name="website-city-code"]').val(),
       	  	cityId:1,
       	  	api:"/web-api"
       	  },
       	  /**/
       	  initCity:function(){
       	  	var self = this;
			    //加载城市ID
			    $.get(self.dk.api+'/base-configure/city-list', function (data) {
			        for (var i = 0; i < data.length; i++) {
			            if (data[i].code == self.dk.cityCode) {
			                self.dk.cityId = data[i].id;
			            }
			        }
			        //初始化搜索
			        self.seachFn()
			        //加载room列表
			        self.roomList()
			    });
       	  },
       	  /**
       	   * 合租/整租列表
       	   * params {arguments}  拼接js-[arguments]-room 对应元素名称
       	   * */
       	  roomList:function(){
       	  	  var modeArr = arguments;
       	  	  var self = this;
       	  	  $.ajax({
       	  	  	url:self.dk.api+"/room/recommend-list",
       	  	  	type:"get",
       	  	  	dataType:"json",
       	  	  	data:{
       	  	  		city_id:self.dk.cityId,
       	  	  		rent_cycle:1,
       	  	  		limit:6
       	  	  	},
       	  	  	success:function(data){
       	  	  		//无数据直接返回
       	  	  		if(!data.length){
       	  	  			$(".m-joint").hide();
       	  	  			$(".js-month-room").html(['<div class="notext_box">',
				                        '<strong>房源更新中...</strong><br>',
				                        '您可调整搜索关键词查找周边房源，或者订阅相应区域房源，',
				                        '<a class="newroom" href="javascript:void(0)" data-toggle="modal" data-target="#myroom">有新房源时及时通知我</a>',
				                    '</div>'].join(""))	;
       	  	  			return; 
       	  	  		}
       	  	  		//用array收集数据转化为标签
       	  	  		var roomArr = [];
       	  	  		$.each(data,function(i,e){
   	  	  				roomArr.push(self.listHtml(e))
       	  	  		})
       	  	  		
       	  	  		/*将html插入渲染到页面中并使其显示出来*/
       	  	  		var searchType = "是"
       	  	  		$(".js-month-room").html(roomArr.join("")).show();
  	  			    $(".js-month-btn").removeClass("dis-n")
  	  			    .find("a").attr("href",'/room/' + self.dk.cityCode + '/g'+encodeURI(searchType)+'.html?search=1&search_text=' + '&from=month');
       	  	  	},
       	  	  	error:function(err){
       	  	  		//console.log(err)
       	  	  	}
       	  	  });
       	  },
       	  /**
       	   * 合租&&整租拼接字符串
       	   * param  {Object}
       	   * return {String} 
       	   * */
       	  listHtml:function(ele){
       	  	if(typeof ele != "object")return;
        	 var html = ['<div class="room-list">',
        	 	  '<a class="pic" target="_blank" href="',ele.url,'"><img width="330" height="240" src="',ele.major_image,'" title="'+ ele.name +'" alt="精选月租房源图片" /></a>',
        	 	  '<div class="txt">',
        	 	  	 ,'<p class="price">',ele.price,'<span>',ele.price_unit,'</span></p>',
        	 	  	 '<a class="tit" href="',ele.url,'">',ele.name,'</a>',
        	 	  	 '<div class="ads">',ele.nearest_subway_title,'</div>',
        	 	  '</div>',
        	 '</div>']
       	  	 return html.join("")
       	  },
       	  /**
       	   * [搜索模块]
       	   **/
       	  seachFn:function(){
       	  	var self = this;
       	  	var searchType = '是',
		        resu = {city_id: self.dk.cityId};
			    //回车搜索
			    $('.search-box input').bind('keypress', function (event) {
			        if (event.keyCode == "13") {
			            $('.search-btn').trigger('click')
			        }
			    });
			    //搜索跳转
			    $('.search-btn').click(function () {
					var $keywords = $.trim($('.search-box input').val());
					// saMethod.Initiatingsearchrequest(window.location.href, $('.search-box input').val(), true, true, true, true)
					window.location.href = 'https://www.dankegongyu.com/room/' + self.dk.cityCode + '/g' + encodeURI(searchType) + '.html?search=1&search_text=' + encodeURI($keywords) + '&from=month';
			    });
       	  }
	   }.init()
	   
	   sa.quick('autoTrack', {
			'page_type': '月租频道',
			// 'source_type': '',
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
</body>
</html>
