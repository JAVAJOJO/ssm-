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
		<button class="layui-btn layui-btn-danger" onclick="window.location='Submit'">
			<i class="layui-icon" ></i>
			添加
		</button>

           </div>
           <table class="layui-table">
				<tr>
	        <td>id</td>
	        <td>username</td>
	        <td>password</td>
	        <td>level</td>
	        <td>status</td>
	        <td>编辑</td>
	        <td>删除</td>
	    </tr>
	    <c:forEach items="${cs}" var="c" varStatus="st">
	        <tr>
	            <td>${c.id}</td>
	            <td>${c.username}</td>
	        	<td>${c.password}</td>
	        	<td>${c.level}</td>
	        	<td>${c.status}</td>
	            <td><a href="editCategory?id=${c.id}">编辑</a></td>
	            <td><a href="deleteCategory?id=${c.id}">删除</a></td>
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