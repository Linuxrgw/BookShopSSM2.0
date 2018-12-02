<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>信息管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
#result{
color:green;

}
</style>
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/jquery/jquery-1.4.4.min.js"></script>
<script src="scripts/My97DatePicker/WdatePicker.js" type="text/javascript" defer="defer"></script>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		 * 提交
		 */
		$("#submitbutton").click(function() {
			if(validateForm()){
				checkFyFhSubmit();
			}
		});
		
		/*
		 * 取消
		 */
		$("#cancelbutton").click(function() {
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
		});
		
		var result = 'null';
		if(result =='success'){
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
		}
	});
	

	
	/** 表单验证  **/
	function validateForm(){
		if($("#address").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源位置', ok:true,});
			return false;
		}
		if($("#comment").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源描述', ok:true,});
			return false;
		}
		if($("#area").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写房源面积', ok:true,});
			return false;
		}
		if($("#jzarea").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写计租面积', ok:true,});
			return false;
		}
		if($("#type").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写户型', ok:true,});
			return false;
		}
		if($("#subway").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写地铁', ok:true,});
			return false;
		}
		if($("#rentdate").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写可租赁日期', ok:true,});
			return false;
		}
		if($("#sta").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写状态', ok:true,});
			return false;
		}
		if($("#price").val()==""){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'填写价格', ok:true,});
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<form id="submitForm" name="submitForm" action="AddRoomSvl" enctype="multipart/form-data" method="post">
	<input type="hidden" name="fyID" value="14458625716623" id="fyID"/>
	<div id="container">
		<div id="nav_links">
			当前位置：基础数据&nbsp;>&nbsp;<span style="color: #1A5CC6;">用户编辑</span>
			<div id="page_close">
				<a href="javascript:parent.$.fancybox.close();">
					<img src="images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
				</a>
			</div>
		</div>
		<div class="ui_content">

			<table  cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
				<tr>
					<td class="ui_text_rt" width="80">位置</td>
					<td class="ui_text_lt">
						<input name="address" type="text" id="address" class="ui_input_txt02"" onchange="getFyDhListByFyXqCode();"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">房源</td>
					<td class="ui_text_lt">
						<input name="comment" type="text" id="comment" class="ui_input_txt02""/>
                           
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">房源面积</td>
					<td class="ui_text_lt">
						<input type="text" id="area" name="area"  class="ui_input_txt01"/>m²
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">计租面积</td>
					<td class="ui_text_lt">
						<input type="text" id="jzarea" name="area" class="ui_input_txt01" onkeyup="checkFyFh();"/>m²
					</td>
				</tr> 
				<!-- <tr>
					<td class="ui_text_rt">户型</td>
					<td class="ui_text_lt">
						<input type="text" id="fyZongMj" name="fangyuanEntity.fyZongMj" class="ui_input_txt01"/>
					</td>
				</tr> -->
				<tr>
					<td class="ui_text_rt">户型</td>
					<td class="ui_text_lt">
						<select name="type" id="type" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="76" selected="selected">一室一厅一卫</option>
                            <option value="10">两室一厅一卫</option>
                            <option value="14">三室一厅一卫</option>
                        </select>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">地铁</td>
					<td class="ui_text_lt">
						<input type="text" id="subway" name="subway" class="ui_input_txt01"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">可租赁日期</td>
					<td class="ui_text_lt">
						<input type="text" id="rentdate" name="rentdate" class="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">状态</td>
					<td class="ui_text_lt">
						<select name="sta" id="sta" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="38" selected="selected">建成待租</option>
                            <option value="38" selected="selected">建成已租</option>
                        </select>
					</td>
				</tr>
				
				 <tr>
					<td class="ui_text_rt">价格</td>
					<td class="ui_text_lt">
						<input type="text" id="price" name="price" class="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">图片</td>
					<td class="ui_text_lt">
						<input type="file" id="price" name="price" class="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">业主id</td>
					<td class="ui_text_lt">
						<input type="text" id="ownerid" name="ownerid" class="ui_input_txt02"/>
					</td>
				</tr>
				<!-- <tr>
					<td class="ui_text_rt">性质</td>
					<td class="ui_text_lt">
						<select name="fangyuanEntity.zulinXingzhi" id="submitForm_fangyuanEntity_zulinXingzhi" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="40" selected="selected">公租房</option>
                            <option value="41">廉租房</option>
                        </select>
					</td>
				</tr> -->
				<!-- <tr>
					<td class="ui_text_rt">状态</td>
					<td class="ui_text_lt">
						<select name="fangyuanEntity.fyStatus" id="submitForm_fangyuanEntity_fyStatus" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="26">在建</option>
                            <option value="25">建成待租</option>
                            <option value="13" selected="selected">已配租</option>
                            <option value="12">已租赁</option>
                            <option value="24">腾退待租</option>
                            <option value="23">欠费</option>
                            <option value="27">其他</option>
                        </select>
					</td>
				</tr>  -->
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						&nbsp;<input id="submitbutton" type="submit" value="提交" class="ui_input_btn01"/>
						&nbsp;<input id="cancelbutton" type="button" value="取消" class="ui_input_btn01"/>
					</td>
				</tr>
				<c:if test="${requestScope.flag }">
				<span id="result">添加成功</span> 
				
				</c:if>

			</table>

		</div>
	</div>
</form>

</body>
</html>