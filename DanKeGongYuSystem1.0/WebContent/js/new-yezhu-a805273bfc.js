/**
 * Created by chenqisheng on 2018/6/1.
 */
$(document).ready(function () {
    $(".js-house img").on("click",function(){
        $(".js-house-img").attr("src",this.getAttribute("data-src"))
    })
    $(".J-myroom input").on("focus",function(){
        $(this).parents(".sta_tx_b").addClass("border-focus")
    })
    $(".J-myroom input").on("blur",function(){
        if($(this).val()==""){
            $(this).parents(".sta_tx_b").removeClass("border-focus")
        }
    })

    if (navigator.appName === 'Microsoft Internet Explorer') { //判断是否是IE浏览器
        if (navigator.userAgent.match(/Trident/i) && navigator.userAgent.match(/MSIE 8.0/i)) { //判断浏览器内核是否为Trident内核IE8.0
            $(".J-myroom .sta_tx_b1").on("click",function(){
                $("input",$(this).next()).focus();
            })
            $(".sta_tx_b1").parent().css("position","relative")
            $(".sta_tx_b1").css({
                position:"absolute",
                left:0,
                top:10,
                textAlign:"left"
            }).show()
        }
    }

    $("[data-target='#myroom']").on("click",function(){
        if($(window).width()<=750){
            $("#myroom").css({
                position:"absolute",
                "transform":"translateY("+$(window).scrollTop()+"px)",
                "-webkit-transform":"translateY("+$(window).scrollTop()+"px)"
            })

        }
    });

    // 初始化swiper
    var mySwiper = new Swiper('.swiper-container',{
        prevButton:'.swiper-button-prev',
        nextButton:'.swiper-button-next',
        pagination: '.swiper-pagination',
        loop: true
    });

    // 视频播放块js功能与效果
    (function () {
        var videoItem = $(".video-item");

        // 鼠标移入，显示第几集提示
        videoItem.on("mouseenter",function () {
            $(this).find(".video-tip").animate({
                bottom: 0
            },300);
        });

        // 鼠标移出，隐藏第几集提示
        videoItem.on("mouseleave",function () {
            $(this).find(".video-tip").animate({
                bottom: "-100%"
            },200);
        });

        // 播放提示半透明层阻止事件冒泡
        $(".play-state-layer").mouseenter(function (e) {
            e.stopPropagation();
            e.preventDefault();
        }).click(function (e) {
            e.stopPropagation();
            e.preventDefault();
        });

        // 选择第几集视频播放功能
        videoItem.on("click",function () {
            // 获取当前项索引值
            var index = $(this).index();

            var myVideo = $(".my-video");

            // 隐藏已显示播放提示
            $(".play-state-layer").hide();

            // 当前播放提示层显示
            $(this).find(".play-state-layer").show();

            // 第几集提示隐藏
            $(this).find(".video-tip").animate({
                bottom: "-100%"
            },0);

            // 初始播放界面隐藏
            $(".init-play-layer").hide();

            // 播放当前视频
            myVideo.hide().trigger("pause");
            myVideo.eq(index-1).show().trigger("play");
        });

        // 点击初始化播放按钮，播放第一集视频
        $(".init-play-btn").on("click",function () {
            $(this).parent().hide();

            $(".first-video .play-state-layer").show();

            // 播放视频
            $("#my_video1").get(0).play();
        });
    }());

    // 新闻报道块js效果
    (function () {
        var newsItem = $(".news-item");

        // 切换功能
        $(".news-tab span").on("click",function () {
            var index = $(this).index();

            $(".news-list > div").hide();
            $(".news-list > div").eq(index).show();

            $(".news-tab span").removeClass("click-active");
            $(this).addClass("click-active");
        });

        // 鼠标移入，新闻项上移功能
        newsItem.on("mouseenter",function () {
            $(this).animate({
                top: "-8px"
            },500)
        });

        // 鼠标移出，
        newsItem.on("mouseleave",function () {
            $(this).animate({
                top: "0px"
            },150)
        });
    }());

    // 页面委托功能
    (function () {
        // 点亮激活提交按钮方法
        function activateBtn() {
            // 获取输入框的值
            var ownerName = $(".owner-name").val();
            var phoneNum = $(".phone-num").val();
            var message = $(".note-text").val();
            var plotName = $(".plot-name").val();

            // 判断输入框的值是否都不为空的
            if(ownerName !== "" && phoneNum !== "" && message !== "" && plotName !== "") {
                $(".entrust-submit-btn").addClass("submit-btn-active");
            } else {
                $(".entrust-submit-btn").removeClass("submit-btn-active");
            }
        }

        // 输入框聚焦，隐藏表单提示
        $(".form-wrap input").on("focus",function () {
            $(".entrust-form-tip").hide();
            $(this).siblings(".entrust-form-tip").hide();
        });

        // 手机号码输入框实时输入监控
        $(".phone-num").on("keyup",function (event) {
            // 事件对象
            var e = event || window.event;

            // 获取输入框的值
            var val = $(this).val();

            var picWrap = $(".pic-code-wrap");

            // 判断是否是删除键
            if(e.keyCode === 8) {
                if(val.length === 0) {
                    return false
                } else {
                    if(!picWrap.is(":hidden")) {
                        // 图形验证码块隐藏
                        picWrap.hide();
                    }
                }
            } else {
                // 判断长度是否等于11
                if(val.length === 11) {
                    // 判断当前手机号码和上一次输入的手机号码是否相等
                    if(val !== globalObj.prePhoneNum) {
                        // 初始化globalFlag
                        globalObj.flag = 0;

                        // 初始化codeFlag
                        globalObj.codeFlag = true;

                        picWrap.hide();
                    }
                }
            }

            // 调用方法激活提交按钮
            activateBtn();
        });

        /*
            输入框实时输入监控

            当所有的输入框都有输入值后，激活提交按钮
        */
        $(".owner-name,.note-text,.plot-name").on("keyup",function () {
            activateBtn();
        });

        // 更换图形验证码
        $(".pic-code-wrap img,.pic-code-wrap a").on("click",function () {
            var timestamp = new Date().getTime();
            $('.pic-code-wrap img').attr('src', '/get-img-code/90/30' + "?mobile=" + $('.phone-num').val() + "&time=" + new Date().getTime());
        });

        // 获取短信功能
        yeZhuHandle.sendMessage(".phone-num",".get-note-btn",".phone-num-tip","手机号码不正确，请重新输入",".pic-code",".pic-code-tip",sendFn,".pic-code-wrap",checkPicCode);

        // 点击提交按钮(置灰状态)
        $(".entrust-submit-btn").on("click",function () {
            // 非空校验
            if(!yeZhuHandle.required([".owner-name",".phone-num",".note-text",".housing-estate-name",".plot-name"],".required-tip")){
                return false;
            }

            // 手机号码正则校验
            if(!yeZhuHandle.regValidate(/^1[3-9]\d{9}$/,".phone-num",".phone-num-tip")) {
                return false;
            }

            // 获取短信验证码
            var noteMessage = $(".note-text").val();

            // 创建对象保存表单数据
            var data = {
                name: $(".owner-name").val(),
                mobile: $(".phone-num").val(),
                sms_code: noteMessage,
                type: 'index',
                areaname: $(".housing-estate-name").val()
            };

            // 创建ajax请求，提交数据
            ajaxSubmit(data);
        });
    }());
});
