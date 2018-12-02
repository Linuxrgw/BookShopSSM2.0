
/*${}
 *   参数名	                    含义						参数值					   类型
 	content  	=>  内容				  "我是弹出框|内容"通过添加"|"换行           string   
 	close    	=>  关闭按钮			        元素ID 或元素 class			    string
 	opacity 	=>  弹出层透明度			 "0-1之间的数字"				number
 	boxbgcolor  =>  弹出层背景色				"#fff"					string
 	maskbgcolor =>  遮罩层背景色				"#000"					string
 	maskZindex  =>  弹出层以及弹出框默认z轴		 5000					number
 	time		=>  是否存在定时关闭  			  3    				   	number
 	timeFn      =>  倒计时回调函数     		 function(){}				function
 	timeShutDown=>  倒计时显示读秒在此元素中	 
 	setBtnAttr  =>  设置按钮属性		   "href='' target=''"			string||array 当有多个按钮时 
 																	用数组区分属性属于第几个按钮
 																	["",""]位置与按钮位置相同
 	btnTypeTag  =>  设置按钮标签			"input"||button||a			string
 	removeMask  =>  设置遮罩层关闭			   true or false			Boolean
 	removeBox   =>  关闭时删除弹出层html	   true or false			Boolean	
 	animateType =>  添加弹出层显示动画		 html5动画标示class			string
 	prevent     =>  禁止初始化函数			 
 * */
function pop(params) {
	this.num = 1;
	this.bool = true;
	this.defaults= {
		type:"",
		boxStyle:"",
		template:"default-poup",
		title:null,
		content: null,
		close:".close",
		btnTypeTag:"a",
		opacity:.4,
		boxbgcolor:"#fff",
		maskbgcolor:"#000",
		maskZindex:5000,
		posObj:".posObj",
		splitType:"|",
		time:null,
		timeFn:false,
		setBtnAttr:"href='javascript:;'",
		removeMask:true,
		removeBox:true,
		clearBtnEvt:".base-btn *,.btn *",
		timer:null,
		animateType:"animateFromTop",
		prevent:true
	}
	this.params = $.extend(this.defaults, params || {});
	this.params["prevent"]&&this.init();
}

pop.prototype.mask = function() {
	var This = this;
	while ($("#_mask" + this.num).length > 0) {this.num++;}
	$(document.body).append("<div id='_mask" + this.num + "' class='_mask' mask='mask'></div>");
	$("#_mask"+this.num).css({
		position: "fixed",
		width: "100%",
		height: "100%",
		background:This.params["maskbgcolor"],
		display:"none",
		left: 0,
		top: 0,
		opacity:This.params["opacity"],
		filter: "alpha(opacity=" + This.params["opacity"] * 100 + ")",
		zIndex:This.params["maskZindex"]+This.num*2
	}).fadeIn(200);
	return this;
}
/*创建无定位元素标签*/
pop.prototype.creatTag = function() {
	var This = this,content = "",btnCont = "",closeClass = "",titleCon="",titlClass=this.params["titToken"]||"pop-not-tit";
	var splitType = this.params["splitType"];
    if(!This.params["content"]){return false}
    
    for (var i = 0; i < This.params["content"].toString().split(splitType).length; i++) {
		content += '<div class="popList' + [i] + '">' + This.params["content"].toString().split(splitType)[i] + '</div>';
	}
    
    if(This.params["btn"]){
    	var btnCont = "<div class='pop-btn'>", btn = This.params["btn"],btnLength = null,tag = This.params["btnTypeTag"]=="input"?false:This.params["btnTypeTag"],onBtnStyle = "";
    	btnLength = typeof btn=="string"?1:btn.length;
    	for(var i = 0;i < btnLength;i++){
    		if(tag){
    			var _attr =  This.params["setBtnAttr"];
    			var _a = typeof btn != "string" && typeof _attr == "string";
    			var _b = typeof btn == "string" && typeof _attr != "string";
    			if(_a){
    				_attr = [_attr]
    			}else if(_b){
    				_attr = _attr[0]
    			}
    			if(typeof btn == "string"||btn.length==1){
    				 onBtnStyle = "onlyOne"
    			}else if(btn.length==3){
    				 onBtnStyle = "three"
    			}
    			btnCont += typeof btn=="string"?("<"+tag+" "+_attr+" class='button btn"+(i+1)+" "+onBtnStyle+" js-btn"+(i+1)+"'>"+btn+"</"+tag+">"):("<"+tag+" "+(_attr[i] == undefined?"":_attr[i])+" class='button btn"+(i+1)+" "+onBtnStyle+" js-btn"+(i+1)+"'>"+btn[i]+"</"+tag+">");
    		}else{
    			btnCont += typeof btn=="string"?("<input type='button' class='button btn"+(i+1)+" js-btn"+(i+1)+"' value = "+btn+" />"):("<input type='button' class='button btn"+(i+1)+"' value = "+btn[i]+" />");
    		}
    	}
    	btnCont+="</div>";
    }
    if(This.params["close"]!=false){
    	closeClass = This.params["close"].substring(1);
    }
    
    if(!!This.params["title"]){
    	titleCon = "<div class='pop-tit'>"+This.params["title"]+"</div>";
    	titlClass = ""
    }
    
    if($("#poplayer"+This.num).length==0){
		$(document.body).append("<div id='window-box"+This.num+"' class='window-box'><div id='poplayer"+This.num+"' class='"+This.params["template"]+" "+This.params["type"]+" "+titlClass+"' style='background:"+This.params['boxbgcolor']+";"+This.params['boxStyle']+"'><div class='"+closeClass+"'></div>"+titleCon+"<div class='pop-cont'>"+content+"</div>"+btnCont);
	}
	this.params["box"] = "#poplayer"+This.num;
	
}
/*定位元素位置*/
pop.prototype.setPos = function() {
	var This = this,box = $(this.params["box"]);
	if(!box.hasClass(this.params["type"])){
		box.addClass(this.params["type"])
	}
	box.attr("style",This.params['boxStyle']);
	box.css({
		position:!!This.params["positions"]?"absolute":"fixed",
		display:"none",
		zIndex:(This.params["maskZindex"]+1)+This.num*2
	});
	box.show().css(This.boxSize());
	box.show(0,function(){
		setTimeout(function(){
	  		This.params["content"]&&This.params["initFn"]&&This.params["initFn"](This);
	   },100)
	   $("body").addClass("modal-open")
	}).addClass(This.params["animateType"])
	$(window).on("resize",function(){
		box.css(This.boxSize())
	})
}

pop.prototype.offBox = function() {
	var This = this , mask = $("#_mask" + this.num) , box = $(this.params["box"]) ,	btnLength = 3;
	if(This.params["btn"]){
		var btn = This.params["btn"],
		btnLength = typeof btn=="string"?1:btn.length;
	}
	for(var i=0;i<btnLength;i++){
		close($(this.params["box"]+" .btn"+(i+1)),(i+1))
	}
	This.params["removeMask"]&&close(mask,0);
	close($(this.params["box"]+" "+This.params["close"]),0);
	
	function close(obj,index){
		obj.on("click",function(event){
			if(This.bool){
				This.bool = false;
				setTimeout(function(){
					This.bool = true;
				},200)
				if(index==undefined||index==null){$(this).off("click")}
				event.stopPropagation();
				clearTimeout(This.params["timer"]);
				var onoff =This.params[("callBack"+index)]&&This.params[("callBack"+index)](This);
				if(!onoff&&onoff!=undefined){return false;}
				This.closed();
			}
		})
	}
}

pop.prototype.timer = function(){
	var This = this,mask = $("#_mask" + this.num),box = $(this.params["box"]),timeNum=this.params["time"];
	this.params["timer"] = timeNum&&setTimeout(function(){
		This.closed();
		This.params["timeFn"]&&This.params["timeFn"](This)
	},timeNum*1000);
	
	/*输出倒计时数字*/
	if(timeNum){
		var ts = null;
		$(".timeShutDown",box).html(timeNum)
		ts = setInterval(function(){
			timeNum--;
			$(".timeShutDown",box).html(timeNum);
			if(timeNum==0){clearInterval(ts);}
		},1000)
	}
}

pop.prototype.closed = function(t){
	var mask = $("#_mask" + this.num),
	box = $(this.params["box"]),
	This = this;
	if(t!=0&&this.params["box"]==undefined){
		setTimeout(function(){
			This.closed(t);
		},1);
	}
	t = t==undefined?0:t;
	clearTimeout(This.params["timer"]);
	setTimeout(function(){
		mask.fadeOut(200,function(){$(this).remove();})
		box.removeClass(This.params["animateType"])
		setTimeout(function(){
			box.fadeOut(100,function(){
				if(This.params["removeBox"] && $(box).parents(".window-box").length){
					$(box).parent().remove();
					//This.params[("callBack0")]&&This.params[("callBack0")](This);
				}else{
					$(box).hide();
					$(This.params["clearBtnEvt"],box).off("click")
					$(This.params["content"],box).off("click")
				}
			});
		},100)
		$("body").removeClass("modal-open")
		box.find(".pop-btn").children().off("click");
	},t*1000)
}

pop.prototype.removeAll = function(){
	var mask = $("#_mask" + this.num),
	box = $(this.params["box"]),
	This = this;
	mask.remove();
	if(This.params["removeBox"] && $(box).parents(".window-box").length){
		$(box).parent().remove();
	}else{
		$(box).hide();
		$("*",box).off("click");
	}
}

/*设置更改后的内容*/
pop.prototype.setContent = function(setCon,time){
	This = this;
	if(setCon){
	  setTimeout(function(){
		  $(".pop-cont",This.params["box"]).width($(".pop-cont",This.params["box"]).width()).html("<div class='popList0'>"+setCon+"</div>")
		  This.setPos();
	  },time||500)
	}
}

/*开启遮罩层事件*/
pop.prototype.onmaskEvt = function(){
	var mask = $("#_mask" + this.num),This = this;
	mask.on("click",function(){
		This.closed()
	})
}

/*关闭遮罩层事件*/
pop.prototype.offmaskEvt = function(){
	$("#_mask" + this.num).off("click");
}


/*获取元素尺寸*/
pop.prototype.boxSize = function() {
	var boxSize = {},box = $(this.params["box"]),scrollTop = this.params["positions"] === "absolute" ? $(window).scrollTop():0;
	if(!!this.params["positions"] && this.params["positions"]!=="absolute"){
		boxSize = {
				top: ($(this.params["posObj"]).length>0?$(this.params["posObj"]).offset().top:0) +this.params["top"],
				left: ($(this.params["posObj"]).length>0?$(this.params["posObj"]).offset().left:0) + this.params["left"]
			}
	}else{
		var outerheight = window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight;
		
		boxSize = {
				top: scrollTop+(outerheight - box.outerHeight()) / 2 + 'px',
				left: ($(window).width() - box.outerWidth()) / 2 + 'px'
			}
		$(window).on("resize",function(){
			boxSize = {
				top: scrollTop+(outerheight - box.outerHeight()) / 2 + 'px',
				left: ($(window).width() - box.outerWidth()) / 2 + 'px'
			}
		})
	}
	return boxSize
}
/*初始化函数*/
pop.prototype.init = function() {
	var This = this,start = 0;
	if($("._mask").length>0){start = 150}
	setTimeout(function(){
		This.params["box"]&&This.params["initFn"]&&This.params["initFn"](This);
		This.mask();
		This.creatTag();
		This.setPos();
		This.offBox();
		This.timer();
	},start)
	
}

/*侧边浮层效果*/
function slidePop(params){
	this.defaults= {
		box:".slide-pop",
		boxStyle:"",
		direction:"bottom",
		opacity:.6,
		maskbgcolor:"#000",
		close:".close",
		maskIndex:1000,
		timer:null,
		time:null,
		timeFn:false
		
	}
	this.params = $.extend(this.defaults, params || {});
	this.init();
}

slidePop.prototype.slidemask = function() {
	var This = this;
	$(document.body).append("<div id='slide-mask' class='slide-mask' slide-mask='slide-mask'></div>");
	$("#slide-mask").css({
		position: "fixed",
		width: "100%",
		height: "100%",
		background:This.params["maskbgcolor"],
		display:"none",
		left: 0,
		top: 0,
		opacity:This.params["opacity"],
		filter: "alpha(opacity=" + This.params["opacity"] * 100 + ")",
		zIndex:This.params["maskIndex"]
	}).fadeIn(200);
	return this;
}

slidePop.prototype.slidepos = function() {
	var box = $(this.params["box"]),This =this;
	box.css("z-index",this.params["maskIndex"]+1)
	box.addClass("default-"+This.params["direction"]).css({"display":"block",top:this.params["top"]});
	setTimeout(function(){
		box.addClass("slide-"+This.params["direction"]).removeClass("default-"+This.params["direction"])
		.css({"transition":".3s ease-in-out","-webkit-transition":".3s ease-in-out"});
	},1)
	setTimeout(function(){
		This.params["endFn"]&&This.params["endFn"](this);
	},301)
	return this;
}

slidePop.prototype.slideOff = function() {
	var This = this;
	$(this.params["close"]+",#slide-mask").off("click")
	$(this.params["close"]+",#slide-mask").on("click",function(){
		This.closed()
	})
}


slidePop.prototype.closed = function(t) {
	var mask = $("#slide-mask"),
	box = $(this.params["box"]),
	This = this;
	if(t!=0&&this.params["box"]==undefined){
		setTimeout(function(){
			This.closed(t);
		},1);
	}
	t = t==undefined?0:t;
	clearTimeout(This.params["timer"]);
	setTimeout(function(){
		mask.fadeOut(200,function(){$(this).remove();})
		$(This.params["box"]).removeClass("slide-"+This.params["direction"]).addClass("default-"+This.params["direction"])
		box.find(".pop-btn").children().off("click");
		
		setTimeout(function(){
			This.params["callBack"]&&This.params["callBack"](this);
		},200)
	},t*1000)
	
};

slidePop.prototype.slideTimer = function(){
	var This = this,mask = $("#slide-mask"),box = $(this.params["box"]),timeNum=this.params["time"];
	this.params["timer"] = timeNum&&setTimeout(function(){
		This.closed();
		This.params["timeFn"]&&This.params["timeFn"](This)
	},timeNum*1000);
	
	/*输出倒计时数字*/
	if(timeNum){
		var ts = null;
		$(".timeShutDown",box).html(timeNum)
		ts = setInterval(function(){
			timeNum--;
			$(".timeShutDown",box).html(timeNum);
			if(timeNum==0){clearInterval(ts);}
		},1000)
	}
}

slidePop.prototype.init = function() {
	if($("#slide-mask").length>0){
		this.closed();
		return false;
	}
	this.params["initFn"]&&this.params["initFn"](this);
	this.slidepos();
	this.slidemask();
	this.slideOff()
	this.slideTimer()
};