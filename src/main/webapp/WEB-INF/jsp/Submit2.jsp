<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="./res/layui/css/layui.css" media="all">
	<title>用AJAX以JSON方式提交数据</title>
	<script type="text/javascript" src="./js/jquery.js"></script>
</head>
<body>
<form class="layui-form" action="fileupload2" method="post" enctype="multipart/form-data">
	<div class="layui-form-item">
		<label class="layui-form-label">name:</label>
		<div class="layui-input-block">
			<input name="v_name" required  lay-verify="required" placeholder="请输入名字" autocomplete="off" value="" type="text" class="layui-input" style="width: 200px"> <br><br>
		</div>
		<label class="layui-form-label">status:</label>
		<div class="layui-input-block">
			<input name="v_status" value="0" disabled="disabled"  required  lay-verify="required" placeholder="请输入名字" autocomplete="off" type="text" class="layui-input" style="width: 200px"> <br><br>
		</div>

		<label class="layui-form-label">选择图片：</label>
		<div class="layui-input-block">
			<input type="file" style="border: none;" class="layui-input" name="upload" /><br/>
		</div>
		<label class="layui-form-label">选择视频：</label>
		<div class="layui-input-block">
			<input type="file" style="border: none;" class="layui-input" name="upload1" /><br/>
		</div>
		<div class="layui-input-block" style="margin-left:-10px ">
			<input type="submit" class="layui-input" style="color: #ffffff;background-color: #000000"   value="上传" >
		</div>
	</div>
</form>

<!-- <script>
$('#sender').click(function(){
    var v_name=document.getElementById('v_name').value;
    var v_status=document.getElementById('v_status').value;
    var v_location=document.getElementById('v_location').value;
    var category2={"v_name":v_name,"v_status":v_status,"v_location":v_location};
    var jsonData = JSON.stringify(category2);
    var page="Submit2";
    $.ajax({
            type:"post",
           url: page,
           data:jsonData,
           dataType:"json",
           contentType : "application/json;charset=UTF-8",
           success: function(result){
               alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");
           }
        });
       //alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");
       //alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");

});
</script>  -->
</body>
</html>