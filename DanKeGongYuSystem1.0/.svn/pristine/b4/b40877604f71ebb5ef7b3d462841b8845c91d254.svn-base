/**
 * Created by chenqisheng on 2018/6/7.
 */
var yeZhuHandle = {
    // 非空检验方法
    required: function (elems,tipElem) {
        // 判断传进的参数是否是数组
        if(Object.prototype.toString.call(elems) !== "[object Array]") {
            return false;
        }

        var value;

        for(var i = 0,len = elems.length; i < len; i++) {
            value = $(elems[i]).val();
            if(value === "") {
                $(tipElem).show();
                return 0;
            }
        }

        return 1;
    },
    // 正则格式校验方法
    regValidate: function (reg,elem,tipElem,regText) {
        var val = $(elem).val();
        if(!reg.test(val)) {
            if(tipElem) {
                $(tipElem).text(regText).show();
            }
            return false;
        } else {
            return true;
        }
    },
    // 发送短信验证码方法
    sendMessage: function (phoneInput,getBtn,tipElem,regText,picInput,picTip,fn,picInputWrap,checkPicCode) {
        var _this = this;
        $(getBtn).on("click",function () {
            // 获取手机号码
            var phoneNum = $(phoneInput).val();

            globalObj.prePhoneNum = phoneNum;

            // 判断手机号码是够为空
            if(phoneNum === "") {
                $(tipElem).text("手机号码不能为空").show();
                return false;
            }

            // 手机号码格式校验
            if(!_this.regValidate(/^1[3-9]\d{9}$/,phoneInput,tipElem,regText)) {
                return false;
            }

            // 获取图形验证码
            var picCode = $(picInput).val();

            // 判断是否需要输入图形验证码
            if(globalObj.flag > 0) {
                // 判断图形验证码是隐藏还是显示
                var showBool = $(picInputWrap).is(":hidden");
                if(showBool) {
                    $(picInputWrap).show();

                    $(picInput).val('');

                    // 重置图形验证码
                    $(picInputWrap + "img").click();

                    return false;
                } else {
                    // 判断图形验证是否有输入
                    if(picCode === "") {
                        $(picTip).show();
                        return false;
                    } else {
                        // 检查图形验证码是否正确
                        checkPicCode(phoneNum,picCode);
                    }
                }
            }

            // 判断图形验证码是否输入正确
            if(globalObj.codeFlag) {
                fn(phoneNum,picCode);
            }
        })
    }
};
