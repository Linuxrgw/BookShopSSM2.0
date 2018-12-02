<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<title>信息管理系统</title>
<script type="text/javascript">
//查询所有房屋信息
/*function getInfo(current){
	 if(current=='last'){
		current = $("#totalPage").text();
	 };
	 if(current=='prev'){
		 current = $("#currentPage").text()-1; 
	 };
	 if(current=='next'){
		 current = parseInt($("#currentPage").text())+1; 
	 };
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/BackAllRoomSvl",
		data:{"current":current},
		dataType:"json",
		success:function(data){
		 	var table1 = document.getElementById("table1");
			table1.innerHTML="";
			var aa = "";
			for(var i = 0;i<data.rooms.length;i++){
				  aa+="<tr><td><input type='checkbox' name='IDCheck' value='14458579642011' class='acb' /></td>"+
						"<td>"+data.rooms[i].address+"</td>"+
						"<td>"+data.rooms[i].comment+"</td>"+
						"<td>"+data.rooms[i].area+"</td>"+
						"<td>"+data.rooms[i].area+"</td>";
				  var typeid = data.rooms[i].typeid	;
				  switch(typeid){
				  case 1:
					  aa+="<td>一室一厅一卫</td>";
					  break;
				  case 2:
					  aa+="<td>两室一厅一卫</td>";
					  break;
				  case 3:
					  aa+="<td>三一室一厅一卫</td>";
					  break;  
				  }
				  
				  aa+="<td>"+data.rooms[i].subway+"</td>"+
				      "<td>"+data.rooms[i].rentdate+"</td>";
				  if("0".equals(data.rooms[i].status)){
				  aa+="<td>可出租</td>";
				  }else{
					  aa+="<td>不可出租</td>"; 
				  }
				  aa+="<td>"+
					  	"<a href='house_edit.html?fyID=14458579642011' class='edit'>编辑</a>"+
						"<a href='javascript:del('14458579642011');'>删除</a>"+
				    	"</td>"+
					"</tr>";
				  
			} 
			table1.innerHTML=aa; 
			$("#totalPage").text(data.totalPage); 
			$("#totalCount").text(data.totalCount);
			$("#currentPage").text(data.currentPage);
		}
	});
}*/

	$(document).ready(function(){
		/** 新增   
	    $("#addBtn").fancybox({
	    	'href'  : 'house_edit.html',
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'house_list.html';
	        }
	    });**/
		
	    /** 导入  **/
	    $("#importBtn").fancybox({
	    	'href'  : '/xngzf/archives/importFangyuan.action',
	    	'width' : 633,
	        'height' : 260,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'house_list.html';
	        }
	    });
		
	    /**编辑   **/
	    $("a.edit").fancybox({
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'house_list.html';
	        }
	    });
	});
	/** 用户角色   **/
	var userRole = '';

	/** 模糊查询  **/
	function search(){
		alert("1234");
		var address = $("#address").val();
		alert(address);
		var typeid = $("#typeid").val();
		alert(typeid);
		var status = $("#status").val();
		alert(status);
		window.location.href = ("SearchRoomSvl?address="+address+"&typeid="+typeid+"&status="+status);
	}

	/** 新增   
	function add(){
		$("#submitForm").attr("action", "/xngzf/archives/luruFangyuan.action").submit();	
	}**/
	 
	/** Excel导出  **/
	function exportExcel(){
		if( confirm('您确定要导出吗？') ){
			var fyXqCode = $("#fyXq").val();
			var fyXqName = $('#fyXq option:selected').text();
//	 		alert(fyXqCode);
			if(fyXqCode=="" || fyXqCode==null){
				$("#fyXqName").val("");
			}else{
//	 			alert(fyXqCode);
				$("#fyXqName").val(fyXqName);
			}
			$("#submitForm").attr("action", "/xngzf/archives/exportExcelFangyuan.action").submit();	
		}
	}
	
	/** 删除
	function del(fyID){
		// 非空判断
		if(fyID == '') return;
		if(confirm("您确定要删除吗？")){
			$("#submitForm").attr("action", "/xngzf/archives/delFangyuan.action?fyID=" + fyID).submit();			
		}
	} **/
	
	/** 批量删除
	function batchDel(){
		if($("input[name='IDCheck']:checked").size()<=0){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'至少选择一条', ok:true,});
			return;
		}
		// 1）取出用户选中的checkbox放入字符串传给后台,form提交
		var allIDCheck = "";
		$("input[name='IDCheck']:checked").each(function(index, domEle){
			bjText = $(domEle).parent("td").parent("tr").last().children("td").last().prev().text();
// 			alert(bjText);
			// 用户选择的checkbox, 过滤掉“已审核”的，记住哦
			if($.trim(bjText)=="已审核"){
// 				$(domEle).removeAttr("checked");
				$(domEle).parent("td").parent("tr").css({color:"red"});
				$("#resultInfo").html("已审核的是不允许您删除的，请联系管理员删除！！！");
// 				return;
			}else{
				allIDCheck += $(domEle).val() + ",";
			}
		});
		// 截掉最后一个","
		if(allIDCheck.length>0) {
			allIDCheck = allIDCheck.substring(0, allIDCheck.length-1);
			// 赋给隐藏域
			$("#allIDCheck").val(allIDCheck);
			if(confirm("您确定要批量删除这些记录吗？")){
				// 提交form
				$("#submitForm").attr("action", "/xngzf/archives/batchDelFangyuan.action").submit();
			}
		}
	} **/
	/*删除信息*/
	function roomsDel(){
		if($("input[name='IDCheck']:checked").size()<=0){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'至少选择一条', ok:true,});
			return;
		}
		var arr =[];//定义一个数组  
        $("input[name='IDCheck']:checked").each(function(){//遍历每一个名字为bookids的复选框，其中选中的执行函数  
           arr.push($(this).val());//将选中的值添加到数组arr中  
        });
        $.ajax({
  		  url:"${pageContext.request.contextPath}/DelRoomsSvl",
  		  type:"post",
			  data:{roomnums:arr},
// 			  dataType:"json", //返回值数据的类型是json类型
			  traditional: true,//这里设置为true,当传递数组时，会在我们的数组名称后自动加上”[]”，所以后台接不到。
			  success:function(flag){
				if(flag>0){
					alert("删除成功");
				}else{
					alert("删除失败");
				}
			  }
  	  });
	}
	/*删除单条信息*/
	
	/** 输入页跳转 **/

	function gotoPage() {
		var pageNum = document.getElementById("pageNum").value; //获取输入的页码
		var totalPage = ${requestScope.page.totalPage}; //获取总页数
		//只能是数字
		if (!isNaN(pageNum)) {
			//判断输入的页码是0-总页数之间
			if (pageNum>0 && pageNum <= totalPage) {
                window.location.href='BackAllRoomSvl?current='+pageNum;
			} else {
				alert("只能是1到" + totalPage + "之间的数字");
			}
		}else{
			alert("只能是数字");
		}

	}
</script>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<form id="submitForm" name="submitForm" action="" method="post">
		<input type="hidden" name="allIDCheck" value="" id="allIDCheck"/>
		<input type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName"/>
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
							区
							<select name="address" id="address" class="ui_select01" onchange="getFyDhListByFyXqCode();">
                                <option value="">--请选择--</option>
                                <option value="昌平区">昌平区</option>
                                <option value="八达岭区">八达岭区</option>
                                <option value="朝阳区">朝阳区</option>
                            </select>

<!-- 							栋号 -->
<!-- 							<select name="fangyuanEntity.fyDhCode" id="fyDh" class="ui_select01"> -->
<!--                                 <option value="">--请选择--</option> -->
<!--                             </select> -->
							户型
							<select name="typeid" id="typeid" class="ui_select01">
                                <option value="0">--请选择--</option>
                                <option value="1">一室一厅一卫</option>
                                <option value="2">两室一厅一卫</option>
                                <option value="3">三室一厅一卫</option>
                            </select>
							状态
							<select name="status" id="status" class="ui_select01">
                                <option value="">--请选择--</option>
                                <option value="0">建成待租</option>
                                <option value="1">建成已租</option>
                            </select>

<!-- 							座落&nbsp;&nbsp;<input type="text" id="fyZldz" name="fangyuanEntity.fyZldz" class="ui_input_txt02" /> -->
						</div>
						<div id="box_bottom">
							<input type="button" value="查询" class="ui_input_btn01" onclick="search()" /> 
							<input type="button" value="新增" class="ui_input_btn01" id="addBtn" onclick="window.location.href='house_edit.jsp'"/> 
							<input type="button" value="删除" class="ui_input_btn01" onclick="roomsDel();" /> 
							<input type="button" value="导入" class="ui_input_btn01" id="importBtn" />
							<input type="button" value="导出" class="ui_input_btn01" onclick="exportExcel();" />
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th width="30"><input type="checkbox" id="all" onclick="selectOrClearAllCheckbox(this);" />
							</th>
							<th>位置</th>
							<th>房源</th>
							<th>房源面积</th>
							<th>计租面积</th>
							<th>户型</th>
							<th>地铁</th>
							<th>可租赁日期</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
						<c:forEach var="room" items="${requestScope.page.list}">
							<tr>
								<td><input type="checkbox" name="IDCheck" value="${room.roomnum }" class="acb" /></td>
								<td>${room.address }</td>
								<td>${room.comment }</td>
								<td>${room.area }</td>
								<td>${room.area }</td>
								<c:if test=""></c:if>
								<td>一室一厅一卫</td>
								<td>${room.subway }</td>
								<td>${room.rentdate }</td>
								<c:if test="${room.status eq 0 }">
								<td>建成待租</td>
								</c:if>
								<c:if test="${room.status eq 1 }">
								<td>建成已租</td>
								</c:if>
								<td>
									<a href="house_edit.jsp?roomnum=${room.roomnum }" class="edit">新增</a> 
									<a href="DelRoomSvl?roomnum=${room.roomnum }">删除</a>
								</td>
							</tr>
							</c:forEach>
						
					</table>
				</div>
				<div class="ui_tb_h30">
					<div class="ui_flt" style="height: 30px; line-height: 30px;">
						共有
						<span class="ui_txt_bold04">${requestScope.page.totalCount }</span>
						条记录，当前第
						<span class="ui_txt_bold04">${requestScope.page.currentPage}
						/
						${requestScope.page.totalPage }</span>
						页
					</div>
					<div class="ui_frt">
						<!--   如果是第一页，则只显示下一页、尾页 -->
						
							<input type="button" value="首页" class="ui_input_btn01" 
							    onclick="window.location.href='BackAllRoomSvl?current=1'" />
							<input type="button" value="上一页" class="ui_input_btn01" 
							    onclick="window.location.href='BackAllRoomSvl?current=${requestScope.page.currentPage-1}'" />
							<input type="button" value="下一页" class="ui_input_btn01"
								onclick="window.location.href='BackAllRoomSvl?current=${requestScope.page.currentPage+1}'" />
							<input type="button" value="尾页" class="ui_input_btn01"
								onclick="window.location.href='BackAllRoomSvl?current=${requestScope.page.totalPage}'" />					
						
						<!--   如果是最后一页，则只显示首页、上一页 -->
						
						转到第<input type="text" id="pageNum" class="ui_input_txt01" />页
							 <input type="button" class="ui_input_btn01" value="跳转" onclick="gotoPage()" />
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
