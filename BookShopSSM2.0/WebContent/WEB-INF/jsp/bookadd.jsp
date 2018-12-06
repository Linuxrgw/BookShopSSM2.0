<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加图书</title>
<!-- 引入easyui默认的样式 -->
<link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/default/easyui.css" />
<!-- 引入easyui内置图标样式 -->
<link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/icon.css" />
<!-- 引入jquery的js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- 引入easyui的js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>

</head>
<body>
<table align="center" width="90%">
  <tr>
    <td align="right"> 管理员：admin &nbsp; <a href="#">退出</a></td>
  </tr>
  <tr>
     <td align="center">
<%--      <a href="${pageContext.request.contextPath}/back/AllBookBackSvl">图书列表</a>&nbsp;
 --%>     <a href="${pageContext.request.contextPath}/back/allbooklist_ajax.jsp">图书列表</a>&nbsp;
     <a href="#">新书上架</a>&nbsp;
     <a href="#">书增加库存</a>&nbsp;
     <a href="#">书下架</a>&nbsp;
     <a href="#">用户管理</a>&nbsp;
     <a href="#">修改售价</a>&nbsp;
     <a href="#">用户购买记录</a>&nbsp;
     </td>
  </tr>   
  <tr><td align="left"><h1>新书上架</h1></td></tr>
  <tr>
     <td>
        <form action="${pageContext.request.contextPath}/AddBookSvl" method="post" enctype="multipart/form-data" onsubmit="return validName()">
            <table border="0" align="center" width="60%">
               <tr>
                <td><span style="color: red" >${requestScope.msg}</span></td>
               </tr>
            
               <tr> 
                <td>书号ISBN</td>
                <td><input type="text" name="isbn" /></td>   
               </tr>
               
               <tr> 
                <td>书名</td>
                <td><input type="text" name="bname" /><span id="NameNull"></span></td>   
               </tr>
               
               <tr> 
                <td>作者</td>
                <td><input type="text" name="author" /></td>   
               </tr>
               
               <tr> 
                <td>出版社</td>
                <td><input type="text" name="press" /></td>   
               </tr>
               
               <tr> 
                <td>出版日期</td>
                <td><input class="easyui-datebox" name="pubdate" /></td>   
               </tr>
               
               <tr> 
                <td>价格</td>
                <td><input class="easyui-numberbox" precision="2" name="price" /></td>   
               </tr>
               
               <tr> 
                <td>图片上传</td>
                <td><input type="file" name="imgpath" /></td>   
               </tr>
               
               <tr> 
                <td>图书数量</td>
                <td><input type="text" name="storage" /></td>   
               </tr>
               
               <tr> 
                <td>图书信息</td>
                <td><input type="text" name="bookinfo" /></td>   
               </tr>
               <tr> 
                <td colspan="2" align="center"><input type="submit" value="提交" /></td>   
               </tr>
            </table>
        </form>
     </td>
  </tr>
</table>

<script type="text/javascript">
function validName(){
	var name = document.getElementById("bkname").value;
	var NameNull = document.getElementById("NameNull");
	if(name == null || name == ""){
		NameNull.innerHTML = "<fornt color=\"red\">书名不能为空！</fornt>";
		return false;
	}else{
		NameNull.innerHTML ="";
		return true;
	}
}
</script>
</body>
</html>