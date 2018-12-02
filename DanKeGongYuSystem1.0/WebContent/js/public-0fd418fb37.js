$(function () {

    //关闭app推广层
    $('.floatingLayer b').click(function () {
        $('.floatingLayer').animate({left: "-100%"}, 200, function () {
            $('.floatingLayerBtn').animate({left: 0})
        })
    })
    //展开app推广层
    $('.floatingLayerBtn').click(function () {
        $(this).animate({left: "-100%"}, function () {
            $('.floatingLayer').animate({left: 0}, 200)
        })

    })

    //官网根据属性跳转链接
    $("[data-to-link]").on("click", function () {
        location = $(this).attr("data-to-link");
    })

    //官网筛选
    $('.dropdown-menu>li>a').click(function () {
        var lohref = window.location.href;
        if (lohref.indexOf('/' + $('input[name="website-city-code"]').val()) == -1) {
            window.location.href = '/' + $(this).attr('rel');
        } else {
            if (lohref.indexOf('/room/') == -1) {
                window.location.href = lohref.replace('/' + $('input[name="website-city-code"]').val(), '/' + $(this).attr('rel'));
            } else {
                window.location.href = '/room/' + $(this).attr('rel');
            }
        }
    });
    //返回顶部
    $('.scroll-to-top').click(function () {
        $('html,body').stop().animate({scrollTop: 0}, 300);
    });
    //当前页面定位
    $('.nav').find('a[data-subject="' + $('input[name="website-page-name"]').val() + '"]').addClass('active');
    //中继号
    $.get('/market/geturl-referurl', function (data) {
        //var data=eval('('+data+')')
        var myDate = new Date(),
            date = myDate.getFullYear().toString() + myDate.getMonth().toString() + myDate.getDate().toString(),
            refer = data.data.referUrl,
            Rurl = window.location.href,
            uuid = date + data.data.sessionId,
            realyid = '',
            getjsonur = '//rn.dankegongyu.com';
        if (typeof (data.data.selfUrl) != 'undefined') {
            try {
                if (getCookie('RealyCookie') && getCookie('RealyCookie') == uuid + '_' + md5(refer)) {
                    realyid = {refer: '', url: Rurl, uuid: uuid};
                } else {
                    setCookie('RealyCookie', uuid + '_' + md5(refer));
                    realyid = {refer: refer, url: Rurl, uuid: uuid};
                }
                $.ajax({
                    type: "get",
                    async: true,
                    url: getjsonur + '/relay/numberApp/putOutInfo',
                    dataType: "jsonp",
                    jsonp: "callback",
                    data: realyid,
                    success: function (result) {
                        try {
                            if (result.status == '0') {
                                $.getJSON(getjsonur + '/relay/numberApp/queryRelayNumber?callback=?', {uuid: uuid}, function (mydata) {
                                    try {
                                        if (mydata.status == '0') {
                                            $('.user-phone strong,.serphoen label,.telred a,.pnum').text(mydata.data.relayNumber);
                                        } else {
                                            defaultPhoneNumber();
                                        }
                                    }
                                    catch (e) {
                                        defaultPhoneNumber();
                                    }
                                });
                            } else {
                                defaultPhoneNumber();
                            }
                        }
                        catch (e) {
                            defaultPhoneNumber();
                        }
                    },
                    error: function () {
                        defaultPhoneNumber();
                    }
                });
            }
            catch (e) {
                defaultPhoneNumber();
            }
        } else if (window.location.href.split('utm_source=360').length > 1) {
            setCookie('setCokieUtmSource', '400-875-2221');
            $('.user-phone strong,.serphoen label,.telred a,.pnum').text('400-875-2221');
        } else if (window.location.href.split('utm_source=shenma').length > 1) {
            setCookie('setCokieUtmSource', '400-835-2220');
            $('.user-phone strong,.serphoen label,.telred a,.pnum').text('400-835-2220');
        } else if (window.location.href.split('utm_source=baiduxxl').length > 1) {
            setCookie('setCokieUtmSource', '400-615-6588');
            $('.user-phone strong,.serphoen label,.telred a,.pnum').text('400-615-6588');
        } else if (window.location.href.split('utm_source=sougou').length > 1) {
            setCookie('setCokieUtmSource', '400-670-2688');
            $('.user-phone strong,.serphoen label,.telred a,.pnum').text('400-670-2688');
        } else if (window.location.href.split('utm_source=semtest').length > 1) {
            setCookie('setCokieUtmSource', '400-063-9688');
            $('.user-phone strong,.serphoen label,.telred a,.pnum').text('400-063-9688');
        } else if (getCookie('setCokieUtmSource')) {
            $('.user-phone strong,.serphoen label,.telred a,.pnum').text(getCookie('setCokieUtmSource'));
        } else {
            defaultPhoneNumber();
        }
    });
    rightMethod();
    $(window).scroll(rightMethod);

    /*统计*/
    var _hmt;
    if (_hmt !== undefined) {
        //点击预约电话
        $("[ts_pc_detail_telphone]").on("click", function () {
            _hmt.push(['_trackEvent', "pc端_详情页", "点击预约电话", "roominfo_id_room", $(this).attr("data-code")]);
        })
    }
});
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}
function setCookie(name, value) {
    document.cookie = name + "=" + escape(value) + ";path=/";
}
function defaultPhoneNumber() {
    $('.user-phone strong,.serphoen label,.moth-view span a,.telred a,.pnum').text($('#zjhPhoneNumber').val());
}
//右侧浮层
function rightMethod() {
    var top = 300;
    if ($(window).scrollTop() > top) {
        $('.right-fixed').stop().animate({'opacity': 1}, 100)
    } else {
        $('.right-fixed').stop().animate({'opacity': 0}, 0)
    }
}