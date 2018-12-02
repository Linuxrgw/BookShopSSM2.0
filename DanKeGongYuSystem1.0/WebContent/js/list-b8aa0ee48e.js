$(function () {
    $('#qy').click(function () {
        $(this).addClass('onlist');
        $('#dt').removeClass('onlist');
        $('.area').show();
        $('.subway .sub_option_list').hide();
        $('.subway').hide();
    });
    $('#dt').click(function () {
        $(this).addClass('onlist');
        $('#qy').removeClass('onlist');
        $('.area').hide();
        $('.area .sub_option_list').hide();
        $('.subway').show();
    });

    $('.dropdown').mouseover(function () {
        $(this).addClass('open');
    }).mouseout(function () {
        $(this).removeClass('open');
    });

    if ($('.r_ls').children().eq(1).hasClass('ck_on')) {
        $('.px').css('left', '839px')
    }
    if ($('.r_ls').children().eq(0).hasClass('ck_on')) {
        $('.px').css('left', '958px')
    }
    if ($('.r_ls').children().eq(2).hasClass('ck_on')) {
        $('.px').css('left', '723px')
    }

    var subway_val = $('.cache_subway_list').val();
    var area_list = $('.cache_area_list').val();
    var subway_val_obj = eval("(" + subway_val + ")");
    var area_list_obj = eval("(" + area_list + ")");

    $('.sub-list-box').each(function (i) {
        $(this).hover(function () {
            $(this).find('.sub_option_list').show();
            $(this).children('a').not('.onlist').css('color', '#3dbcc6');
        }, function () {
            $(this).find('.sub_option_list').hide();
            $(this).children('a').not('.onlist').css('color', '#333');
        });
    });
    var now_url = window.location.href;
    var arr_url = now_url.split('room');
    var arr_url_fin = now_url.split('/');
    var quyu = $.trim($('.district').val()),
        block = $.trim($('.block_list_area').val()),
        subway = $.trim($('.subway').val()),
        subway_station = $.trim($('.subway_station').val()),
        select_text = '';
    if (now_url.substr(now_url.length - 1, 1) == '?') {
        now_url = now_url.substr(0, now_url.length - 1);
    }
    var new_url_fin = decodeURI(arr_url[1]).split('/');

    if (quyu != '' || block != '' || subway != '' || subway_station != '') {
        if (block != '') {
            select_text = 'b' + block;
        }
        if (quyu != '') {
            select_text = 'd' + quyu;
        }
        if (subway != '') {
            select_text = 'l' + subway;
        }
        if (subway_station != '') {
            select_text = 's' + subway_station;
        }
        if (now_url.indexOf('page=') != -1 || now_url.indexOf('search_text') != -1) {
            $('.area dd .sub-list-box .sub_option_list>a').click(function () {
                var nowtext = $(this).text(),
                    notext = $(this).parents('.sub_option_list').siblings('a').text();
                if (nowtext != '不限') {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/b' + encodeURI(nowtext) + '.html';
                } else {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/d' + encodeURI(notext) + '.html';
                }
            });
            $('.subway dd .sub-list-box .sub_option_list>a').click(function () {
                var nowtext = $(this).text(),
                    notext = $(this).parents('.sub_option_list').siblings('a').text();
                if (nowtext != '不限') {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/s' + encodeURI(nowtext) + '.html';
                } else {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/l' + encodeURI(notext) + '.html';
                }
            })
            $('.subway dd .option_list>a,.area dd .option_list>a').click(function () {
                if ($(this).text() == '不限') {
                    var str = now_url.split('/' + $('input[name="website-city-code"]').val() + '/')[1].split('.html')[0].toString();
                    if (str.replace(encodeURI(select_text), '').length == 0) {
                        window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val();
                    }
                    else {
                        window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/' + str.replace(encodeURI(select_text + '-'), '') + '.html';
                    }
                }
            });
        } else {
            $('.subway .option_list>a,.area .option_list>a').click(function () {
                if (now_url.split(encodeURI(select_text))[1].split('.html')[0].length > 3) {
                    window.location.href = now_url.replace(encodeURI(select_text), '');
                } else {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val();
                }

            });
            $('.area .sub_option_list').each(function () {
                $(this).find('a').each(function (i) {
                    $(this).click(function () {
                        if (i != 0) {
                            var now_text = $(this).text(),
                                url = now_url.replace(encodeURI(select_text), 'b' + encodeURI(now_text));
                            window.location.href = url;
                        } else {
                            window.location.href = now_url.replace(encodeURI(select_text), 'd' + encodeURI($(this).parents('.sub_option_list').siblings('a').text()))
                        }
                    })
                })
            });
            $('.subway .sub_option_list').each(function () {
                $(this).find('a').each(function (i) {
                    $(this).click(function () {
                        if (i != 0) {
                            var now_text = $(this).text(),
                                url = now_url.replace(encodeURI(select_text), 's' + encodeURI(now_text));
                            window.location.href = url;
                        } else {
                            window.location.href = now_url.replace(encodeURI(select_text), 'l' + encodeURI($(this).parents('.sub_option_list').siblings('a').text()))
                        }
                    })
                })
            })
        }
    }
    else {
        if (decodeURI(arr_url[1]).length > 4) {
            if (now_url.indexOf('search_text') != -1 || now_url.indexOf('page=') != -1) {
                if (window.location.href.indexOf('.html') != -1) {
                    var str = '-' + window.location.href.split('/' + $('input[name="website-city-code"]').val() + '/')[1].split('.html')[0].toString();
                    $('.area dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/b' + encodeURI(nowtext + str) + '.html';
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/d' + encodeURI(notext + str) + '.html';
                        }
                    });
                    $('.subway dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/s' + encodeURI(nowtext + str) + '.html';
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/l' + encodeURI(notext + str) + '.html';
                        }
                    })
                } else {
                    $('.area dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/b' + encodeURI(nowtext) + '.html';
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/d' + encodeURI(notext) + '.html';
                        }
                    });
                    $('.subway dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/s' + encodeURI(nowtext) + '.html';
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/l' + encodeURI(notext) + '.html';
                        }
                    })
                }
            } else {
                var str = window.location.href.split('/room/')[1].substring(3);
                if (window.location.href.indexOf('.html') != -1) {
                    $('.area dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/b' + encodeURI(nowtext) + '-' + str;
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/d' + encodeURI(notext) + '-' + str;
                        }
                    });
                    $('.subway dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/s' + encodeURI(nowtext) + '-' + str;
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/l' + encodeURI(notext) + '-' + str;
                        }
                    })
                } else {
                    $('.area dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/b' + encodeURI(nowtext) + '.html';
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/d' + encodeURI(notext) + '.html';
                        }
                    });
                    $('.subway dd .sub-list-box .sub_option_list>a').click(function () {
                        var nowtext = $(this).text(),
                            notext = $(this).parents('.sub_option_list').siblings('a').text();
                        if (nowtext != '不限') {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/s' + encodeURI(nowtext) + '.html';
                        } else {
                            window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/l' + encodeURI(notext) + '.html';
                        }
                    })
                }
            }
        } else {
            var str = window.location.href.split('/room/')[1].substring(3);
            $('.area dd .sub-list-box .sub_option_list>a').click(function () {
                var nowtext = $(this).text(),
                    notext = $(this).parents('.sub_option_list').siblings('a').text();
                if (nowtext != '不限') {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/b' + encodeURI(nowtext) + '.html';
                } else {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/d' + encodeURI(notext) + '.html';
                }
            });
            $('.subway dd .sub-list-box .sub_option_list>a').click(function () {
                var nowtext = $(this).text(),
                    notext = $(this).parents('.sub_option_list').siblings('a').text();
                if (nowtext != '不限') {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/s' + encodeURI(nowtext) + '.html';
                } else {
                    window.location.href = 'https://s1.wutongwan.org/room/' + $('input[name="website-city-code"]').val() + '/l' + encodeURI(notext) + '.html';
                }
            })

        }

    }


    if (subway != '' || subway_station != '') {
        $('#dt').click();
    }
    $('.area .sub-list-box').each(function () {
        $(this).find('a').each(function () {
            if ($(this).text() == quyu) {
                $(this).addClass('onlist');
                $('.area .sub-list-box').siblings('a').removeClass('onlist');
            }
        });
        $(this).find('.sub_option_list').each(function () {
            $(this).find('a').each(function () {
                if ($(this).text() == block) {
                    $(this).addClass('onlist');
                    $(this).parents('.sub_option_list').siblings('a').addClass('onlist');
                    $('.area .sub-list-box').siblings('a').removeClass('onlist');
                }
            })
        })
    })
    $('.subway .sub-list-box').each(function () {
        $(this).find('a').each(function () {
            if ($(this).text() == subway) {
                $(this).addClass('onlist');
                $('.subway .sub-list-box').siblings('a').removeClass('onlist');
            }
        });
        $(this).find('.sub_option_list').each(function () {
            $(this).find('a').each(function () {
                if ($(this).text() == subway_station) {
                    $(this).addClass('onlist');
                    $(this).parents('.sub_option_list').siblings('a').addClass('onlist');
                    $('.subway .sub-list-box').siblings('a').removeClass('onlist');
                }
            })
        })
    });
    var input_val = $("input[name='search_text']").val();
    $.get('/room/guesslist/' + input_val, function (data) {
        if (data.length > 0) {
            $.each(data, function (idx, item) {
                $('#guest-like').append('<dl>' +
                    '<dt>' +
                    '<a href="' + item.link + '" target="_blank">' +
                    '<img src="' + item.pic + '"' +
                    'title="' + item.address + '"' +
                    'alt="' + item.address + '图片"/>' +
                    '</a>' +
                    '</dt>' +
                    '<dd>' +
                    '<div class="new-list-price">¥' + item.price + '<span>元/月</span></div>' +
                    '<h1>' +
                    '<a href="' + item.link + '">' + item.address + '</a>' +
                    '</h1>' +
                    '<p>' + item.subhead + '</p>' +
                    '</dd>' +
                    '</dl>')
            })
        } else {
            $('#y-guest-like').hide();
        }
    });

    $('.recommend-box').click(function () {
        self.location = document.referrer;
    });
    //联想搜索
    if ($('.sear_input').val().length > 0) {
        $('.sear_menu strong').show();
    }
    $('.sear_menu strong').click(function () {
        $('.sear_input').val('');
        $('.sear_menu strong').hide();
        $('.search_btn').click();
    });
    var cityId = 1,
        cityCode = $('input[name="website-city-code"]').val();

    $.get('/web-api/base-configure/city-list', function (data) {
        for (var i = 0; i < data.length; i++) {
            if (data[i].code == cityCode) {
                cityId = data[i].id;
            }
        }
    });
    $('.sear_input').keyup(function (event) {
        var keyVal = $(this).val(),
            ohtml = '';
        if ($(this).val().length > 0) {
            $('.sear_menu strong,.recommend-box').show();
            if (event.keyCode != 40 && event.keyCode != 38 && event.keyCode != 13) {
                $.get('/web-api/base-configure/sug-text?city_id=' + cityId + '&query=' + keyVal, function (data) {
                    if (data.length > 0) {
                        for (var i = 0; i < data.length; i++) {
                            ohtml += '<div class="recom-list"><span style="background-image: url(' + data[i].icon + ')">' + data[i].title + '</span><label>' + data[i].num + '间房源</label></div>';
                        }
                    } else {
                        ohtml = '<div class="recom-list-none">无符合条件的房源</div>';
                    }
                    $('.recommend-box').html(ohtml);
                    $('.sear_menu strong,.recommend-box').show();
                    $('.recom-list').each(function () {
                        $(this).hover(function () {
                            $(this).addClass('on');
                        }, function () {
                            $(this).removeClass('on');
                        });
                        $(this).click(function () {
                            $('.sear_input').val($(this).find('span').text());
                            $('.search_btn').click();
                            return false;
                        });
                    });
                });
            }
        } else {
            $('.sear_menu strong,.recommend-box').hide();
        }
    });
    $(document).click(function () {
        var ev = ev || event;
        ev.cancelBubble = true;
        $('.recommend-box').hide();
        this.offOn = true;
    });
    //按键选择
    //初始化选中
    var indexof = 0;
    $(document).keydown(function (event) {
        switch (event.keyCode) {
            case 40:
                indexof = $('.recom-list.on').index();
                if (indexof + 1 < $('.recom-list').length) {
                    indexof = indexof + 1;
                } else {
                    indexof = 0;
                }
                $('.recom-list').removeClass('on').eq(indexof).addClass('on');
                break;
            case 38:
                indexof = $('.recom-list.on').index();
                if (indexof == 0) {
                    indexof = $('.recom-list').length - 1;
                } else {
                    indexof = indexof - 1;
                }
                $('.recom-list').removeClass('on').eq(indexof).addClass('on');
                break;
            case 13:
                if ($('.recom-list.on').length > 0) {
                    $('.sear_input').val($('.recom-list.on').find('span').text());
                    $('.sear_input').blur();
                    $('.search_btn').click();
                }
                break;
        }
    });
});