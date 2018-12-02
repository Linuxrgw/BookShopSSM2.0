$.fn.bootstrapDropdownHover();
$(function () {
    var token = $('#tokenval').val();
    var leftLng = '';
    var leftLat = '';
    var rightLng = '';
    var rightLat = '';
    var xiaoquaidi = '';
    var pagelist = 1;
    var location = $.trim($('#location').val());
    var mapBox = $('.mapbox');
    var mapList = $('.map_list');
    var selectlist = $('.selectlist li');
    PageResize();
    $(window).resize(function () {
        PageResize();
    });
    //展开-收起
    $('.mapcursor').click(function () {
        var mapLeft = $('.mapleft');
        if ($(this).hasClass('on')) {
            $(this).removeClass('on');
            mapLeft.animate({'margin-left': '0'}, 500);
            mapBox.stop().animate({'width': $(window).width() - 722}, 500);
        } else {
            $(this).addClass('on');
            mapLeft.animate({'margin-left': '-704px'}, 500);
            mapBox.stop().animate({'width': $(window).width() - 17}, 500);
        }
    });
    //默认房源列表
    mapMethod(leftLng, leftLat, rightLng, rightLat, xiaoquaidi, pagelist, 'default');
    //智能查询box
    function intelligentSelect(id) {
        return document.getElementById(id);
    }

    document.onselectstart = new Function("event.returnValue=false;");
    // 百度地图API功能
    var mp = new BMap.Map("allmap", {minZoom: 11, maxZoom: 17, enableMapClick: false});
    var top_left_navigation = new BMap.NavigationControl();
    mp.addControl(top_left_navigation);
    mp.centerAndZoom(new BMap.Point(location.split(',')[0], location.split(',')[1]), 12);
    mp.enableScrollWheelZoom();
    //自定义覆盖物公用方法
    function ComplexCustomOverlay(point, text, mouseoverText) {
        this._point = point;
        this._text = text;
        this._overText = mouseoverText;
    }

    ComplexCustomOverlay.prototype = new BMap.Overlay();
    //自定义覆盖物小房子图标定位
    ComplexCustomOverlay.prototype.initialize = function (map) {
        this._map = map;
        var div = this._div = document.createElement("div");
        div.setAttribute('class', 'mapviewbox');
        div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat);
        var span = this._span = document.createElement("span");
        div.appendChild(span);
        span.appendChild(document.createTextNode(this._text));
        var that = this;
        var arrow = this._arrow = document.createElement("div");
        arrow.style.left = "-14px";
        div.appendChild(arrow);
        mp.getPanes().labelPane.appendChild(div);
        return div;
    }
    ComplexCustomOverlay.prototype.draw = function () {
        var pixel = mp.pointToOverlayPixel(this._point);
        this._div.style.left = pixel.x - parseInt(this._arrow.style.left) + "px";
        this._div.style.top = pixel.y + "px";
    }
    //默认有房城区图形展示
    $.get('/map/district', {_token: token}, function (data) {
        if (data.success == true) {
            var hasRoom = data.data;
            for (var i = 0; i < data.data.length; i++) {
                mp.addOverlay(new ComplexCustomOverlay(new BMap.Point(hasRoom[i].longitude, hasRoom[i].latitude), hasRoom[i].name));
            }
            !$('.mapviewbox').not('.small').click(function () {
                $('.searchbox input').val($(this).find('span').text());
                searchTextVal($(this).find('span').text());
            });
        }
    });
    var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
        {
            "input": "suggestId"
            , "location": mp
        });
    ac.addEventListener("onhighlight", function (e) {  //鼠标放在下拉列表上的事件
        var str = "";
        var _value = e.fromitem.value;
        var value = "";
        if (e.fromitem.index > -1) {
            value = _value.province + _value.city + _value.district + _value.street + _value.business;
        }
        str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

        value = "";
        if (e.toitem.index > -1) {
            _value = e.toitem.value;
            value = _value.province + _value.city + _value.district + _value.street + _value.business;
        }
        str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
        intelligentSelect("searchResultPanel").innerHTML = str;
    });

    var myValue;
    ac.addEventListener("onconfirm", function (e) {    //鼠标点击下拉列表后的事件
        var _value = e.item.value;
        myValue = _value.province + _value.city + _value.district + _value.street + _value.business;
        intelligentSelect("searchResultPanel").innerHTML = "onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
        //$('.searchbox a').click();
        mp.clearOverlays();
        function myFun(){
            var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
            mp.centerAndZoom(pp, 14);
            mp.addOverlay(new BMap.Marker(pp));    //添加标注
        }
        var local = new BMap.LocalSearch(mp, { //智能搜索
            onSearchComplete: myFun
        });
        local.search(myValue);
        readMapCoor();
    });
    //搜索按钮
    $('.searchbox a').click(function () {
        mp.clearOverlays();
        if ($.trim($('.searchbox input').val()) != '') {
            searchTextVal($.trim($('.searchbox input').val()));
        }
    });
    function searchTextVal(key) {
        $.get("/map/search-geo-encode", {keywords:key , _token: token},
            function (data) {
                if (data.success == true) {
                    mapList.show();
                    $('.searchnone').hide();
                    var new_point = new BMap.Point(data.data.location.lng, data.data.location.lat);
                    var marker = new BMap.Marker(new_point);  // 创建标注
                    if (mp.getZoom() == 13) {
                        mp.centerAndZoom(new_point, 13);
                        mp.addOverlay(marker);
                        readMapCoor();
                    } else {
                        mp.centerAndZoom(new_point, 13);
                        mp.addOverlay(marker);
                    }
                    $('.tangram-suggestion-main').hide();
                } else {
                    alert('您搜索的位置暂时还没有房源哦,请关注蛋壳公寓官网最新动态!')
                }
            });
    }
    //监听拖拽
    mp.addEventListener("dragend", function showInfo() {
        resetMapCoor();

    });
    //监听缩放
    mp.addEventListener("zoomend", function () {
        resetMapCoor();
    });
    //动态切换
    $('.selectlist').each(function () {
        $(this).hover(function () {
            $(this).find('ul').show();
        }, function () {
            $(this).find('ul').hide();
        });
    });
    //筛选条件过键展示
    selectlist.hover(function () {
        $('.selectlist li').removeClass('on');
        $(this).addClass('on');
    }, function () {
        $(this).removeClass('on');
    });
    //选择筛选条件
    selectlist.click(function () {
        mp.clearOverlays();
        $(this).parents('ul').hide().siblings('span').text($(this).text());
        $(this).parents('ul').hide().siblings('input').val($(this).attr('value'));
        mapMethod(leftLng, leftLat, rightLng, rightLat, '', '1');
    });
    //不限特色筛选
    $('.checklist.null').click(function () {
        mp.clearOverlays();
        $('.checklist').removeClass('on');
        $(this).addClass('on');
        $('#hasToilet').val('')
        $('#hasBalcony').val('');
        $('#hasShower').val('');
        mapMethod(leftLng, leftLat, rightLng, rightLat, '', '1');
    });
    //特色多重选择
    $('.checklist').not('.null').each(function (i) {
        $(this).click(function () {
            mp.clearOverlays();
            $('.checklist.null').removeClass('on');
            if ($(this).hasClass('on')) {
                $(this).removeClass('on');
                $(this).find('input').val('');
            } else {
                $(this).addClass('on');
                $(this).find('input').val('有');
            }
            mapMethod(leftLng, leftLat, rightLng, rightLat, '', '1');
        });
    });
    //租房类型选择
    $('.map-method span').click(function () {
        mp.clearOverlays();
        $(this).addClass('on').siblings('span').removeClass('on');
        if ($(this).text() == '不限') {
            $(this).siblings('input').val('');
        } else {
            $(this).siblings('input').val($(this).text());
        }
        mapMethod(leftLng, leftLat, rightLng, rightLat, '', '1');
    });
    //操作地图功能公用方法
    function mapMethod(leftBottomLng, leftBottomLat, rightTopLng, rightTopLat, xiaoquId, pagelist, set) {
        $.get("/map/search-by-params", {
            _token: token,
            page: pagelist,
            pageSize: $('#pageend').val(),
            left_bottom_lng: leftBottomLng,
            left_bottom_lat: leftBottomLat,
            right_top_lng: rightTopLng,
            right_top_lat: rightTopLat,
            price: $('#pricenum').val(),
            bedroomNum: $('#roomnum').val(),
            rentType: $('#room-method').val(),
            area: $('#roominpor').val(),
            faceTo: $('#roomfangxiang').val(),
            hasToilet: $('#hasToilet').val(),
            hasBalcony: $('#hasBalcony').val(),
            hasShower: $('#hasShower').val(),
            xiaoquId: xiaoquId

        }, function (room) {
            if (room.data.roomList.length > 0) {

                mapList.show().html('');
                $('.searchnone').hide();
                var myCompOverlay = [];
                if(mp.getZoom() < 13){
                    $.get('/map/district', {_token: token}, function (data) {
                        if (data.success == true) {
                            var hasRoom = data.data;
                            for (var i = 0; i < data.data.length; i++) {
                                mp.addOverlay(new ComplexCustomOverlay(new BMap.Point(hasRoom[i].longitude, hasRoom[i].latitude), hasRoom[i].name));
                            }
                            !$('.mapviewbox').not('.small').click(function () {
                                $('.searchbox input').val($(this).find('span').text());
                                searchTextVal($(this).find('span').text());
                            });
                        }
                    });
                }else {
                    if (!room.data.xiaoquId && room.data.xiaoquList && set != 'default') {
                        for (var i = 0; i < room.data.xiaoquList.length; i++) {
                            myCompOverlay[i] = new ComplexCustomOverlay(new BMap.Point(room.data.xiaoquList[i].longitude, room.data.xiaoquList[i].latitude), room.data.xiaoquList[i].xiaoquName);
                            mp.addOverlay(myCompOverlay[i]);
                            $('.mapviewbox').addClass('small');
                            $('.mapviewbox').eq(i).attr('id', room.data.xiaoquList[i].id);
                            $('.mapviewbox').eq(i).children('div').text(room.data.xiaoquList[i].count);
                        }
                    }
                }
                addRoom(room.data.roomList);
                pageListNum(room.data.page, 'selected');
            } else {
                mapList.hide().html('');
                $('.searchnone').show();
                $('.map_pagebox').html('');
            }
        });
    }

    //重置地图图标并读取地图坐标方法
    function resetMapCoor() {
        mp.clearOverlays();
        readMapCoor();
    }

    //读取地图坐标
    function readMapCoor() {
        var bs = mp.getBounds();   //获取可视区域
        var bssw = bs.getSouthWest();   //可视区域左下角
        var bsne = bs.getNorthEast();   //可视区域右上角
        leftLng = bssw.lng;
        leftLat = bssw.lat;
        rightLng = bsne.lng;
        rightLat = bsne.lat;
        xiaoquaidi = '';
        mapMethod(leftLng, leftLat, rightLng, rightLat, '', '1');
    }

    //分页按钮操作
    function pageList(def) {
        //直接跳转页面
        $('.pagelistcontent a').click(function () {
            var num = parseInt($(this).text());
            mapList.html('');
            $('.pagelistcontent a').removeClass('on');
            $(this).addClass('on');
            defaultLoad(def, num);
        });
        //下一页
        $('.nextpagelist').click(function () {
            var num = parseInt($('.pagelistcontent a.on').text()) + 1;
            mapList.html('');
            defaultLoad(def, num);
            $('.nextpagelist').unbind('click');
        });
        //上一页
        $('.prevpagelist').click(function () {
            var num = parseInt($('.pagelistcontent a.on').text()) - 1;
            mapList.html('');
            defaultLoad(def, num);
            $('.prevpagelist').unbind('click');
        });
        //上下页过键
        $('.map_pagebox span').hover(function () {
            $(this).addClass('on');
        }, function () {
            $(this).removeClass('on');
        });
    }

    //判断分页跳转默认分页和筛选分页
    function defaultLoad(def, page) {
        switch (def) {
            case 'default':
                mapMethod(leftLng, leftLat, rightLng, rightLat, xiaoquaidi, page, 'default');
                break;
            case 'selected':
                if (xiaoquaidi == '') {
                    mp.clearOverlays();
                }
                mapMethod(leftLng, leftLat, rightLng, rightLat, xiaoquaidi, page);
                break;
        }
    }

    //添加房间
    function addRoom(len) {
        var lnum = len.length;
        var mapviewbox = $('.mapviewbox.small')
        for (var i = 0; i < lnum; i++) {
            var tit = '';
            var html = '';
            tit = len[i].tags != '' ? '<i>' + len[i].tags.join('</i><i>') + '</i>' : ''
            html += '<div class="map_roomlist">' +
                '<a href="https://s3.wutongwan.org/room/%27 + len[i].id + %27.html" target="_blank">' +
                '<img src="' + len[i].image + '"/>' +
                '<span>' + len[i].addressText + '</span>' +
                '<div class="map_price">';
            if (len[i].isOverallRent == '0') {
                html += '<label>' + len[i].station + '<i>合</i></label>';
            }
            if (len[i].isOverallRent == '1') {
                html += '<label>' + len[i].station + '<em>整</em></label>';
            }
            html += '<em><strong>' + len[i].price + '</strong>元/月</em>' +
                '</div>' +
                '<div class="map_room_title">' + tit + '</div>' +
                '</a>' +
                '</div>';
            $('.map_list').append($(html));
        }
        //地图悬浮
        mapviewbox.hover(function () {
            $(this).addClass('active');
        }, function () {
            $(this).removeClass('active');
        });
    }

    //小区click
    $('div').delegate('.small', 'click', function (evt) {
        evt.stopPropagation();
        mapList.html('');
        xiaoquaidi = $(this).attr('id');
        mapMethod(leftLng, leftLat, rightLng, rightLat, xiaoquaidi, '1');
    });
    //分页-页码展示
    function pageListNum(len, tex) {
        var mapPage = $('.map_pagebox');
        mapPage.html('<div class="pagelistcontent"></div>');
        mapPage.append('<span class="nextpagelist">&gt;</span>');
        $('<span class="prevpagelist">&lt;</span>').insertBefore($('.pagelistcontent'));
        $('.pagelistcontent').html('');
        if (len.pre == null) {
            $('.prevpagelist').hide();
        }
        if (len.next == null) {
            $('.nextpagelist').hide();
        }
        var pageSize = 3;
        if (len.lastPage > pageSize) {
            if (len.currentPage < pageSize) {
                pageSizeView(1, pageSize + 1, len);
            } else if (len.currentPage >= pageSize && len.currentPage + 1 < len.lastPage) {
                pageSizeView(len.currentPage - 1, len.currentPage + pageSize - 1, len);
            } else {
                pageSizeView(len.currentPage - (len.currentPage == len.lastPage ? 2 : 1), len.lastPage, len);
            }
        } else {
            pageSizeView(1, len.lastPage, len);
        }
        pageList(tex);
    }

    //分页页码展示
    function pageSizeView(starSize, endSize, page) {
        for (var i = starSize; i < endSize + 1; i++) {
            setPageListContent(i, page.currentPage);
        }
    }

    //判定当前页码
    function setPageListContent(i, c) {
        var pageList = $('.pagelistcontent')
        if (i == c) {
            pageList.append('<a href="javascript:void(0)" class="on">' + i + '</a>');
        } else {
            pageList.append('<a href="javascript:void(0)">' + i + '</a>');
        }
    }

    //页面resize自适应
    function PageResize() {
        //初始化页面宽高
        mapBox.css('width', $(window).width() - 722);
        $('.mapbox,#allmap').css('height', $(window).height() - 92);
        mapList.css('height', $(window).height() - 453);
        $('.searchnone').css('height', $(window).height() - 443);
        if ($(window).width() < 900) {
            window.location.href = 'https://s3.wutongwan.org/room/';
        }

    }
});
