<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="./res/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="css/muser.css">
</head>
<body>
	<div class="list_body">
           <div class="block">
                <button class="layui-btn layui-btn-danger" onclick="window.location='Submit22'">
                <i class="layui-icon" ></i>
                添加
                </button>
			   <%--<form method="post" action="Submit2">--%>
				   <%--name:<input name="v_name" value="" type="text"> <br><br>--%>
				   <%--status:<input name="v_status" value="1" type="text"> <br><br>--%>
				   <%--location:<input name="v_location" type="file" value=""> <br><br>--%>
				   <%--image:<input name="v_image" type="file" value=""> <br><br>--%>
				   <%--<!--选择视频：<input type="file" name="upload" /><br/>-->--%>
				   <%--<input type="submit" value="增加">--%>
			   <%--</form>--%>

			   <%--<form action="fileupload2" method="post" enctype="multipart/form-data">--%>
				   <%--选择图片：<input type="file" name="upload" /><br/>--%>
				   <%--选择视频：<input type="file" name="upload1" /><br/>--%>
				   <%--<input type="submit" value="上传">--%>
			   <%--</form>--%>

			   <%--<td><a href="Submit22">添加</a></td>--%>
			   <%--<td><a href="upload">添加图片</a></td>--%>
                <%--<span class="total_data">共有数据：88条</span>--%>
           </div>
           <table class="layui-table">
			
					<tr>
	        <td>v_id</td>
	        <td>v_name</td>
	        <td>v_status</td>
	        <td>v_location</td>
	        <td>v_image</td>

	        <td>审核</td>
	        <td>删除</td>
	    </tr>
	    <c:forEach items="${cs}" var="c" varStatus="st">
	        
	        <tr>
	            <td>${c.v_id}</td>
	            <td>${c.v_name}</td>
	        	<td>${c.v_status}</td>
	        	<td>${c.v_location}</td>	        	
	        	<td>${c.v_image}</td>
	            <td><a href="editCategory2?id=${c.v_id}&status=${c.v_status}">审核</a></td>
	            <td><a href="deleteCategory2?v_id=${c.v_id}">删除</a></td>
	            <!--<td><button class="layui-btn" onclick="WeAdminShow('上传用户','./upload')">
					<i class="layui-icon"></i>
					上传
				</button></td>-->
				<%--<td><a href="upload?v_id=${c.v_id}">上传图片</a></td>--%>
				<%--<td><a href="upload2?v_id=${c.v_id}">上传视频</a></td>--%>
	        </tr>
	    </c:forEach>
		</table>
           <div style="text-align:center">
		<a href="?start=0">首  页</a>
		<a href="?start=${page.start-page.count}">上一页</a>
		<a href="?start=${page.start+page.count}">下一页</a>
		<a href="?start=${page.last}">末  页</a>
	</div>
    </div>
</body>
</html>