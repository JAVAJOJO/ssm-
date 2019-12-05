<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <div style="width:500px;margin:0px auto;text-align:center">
	
	
	<div style="text-align:center;margin-top:40px">
		
		<form method="post" action="updateCategory">
			password:<input name="password" value="${c.password}" type="password"> <br><br>
			<!--  password:<input name="password" value="${c.password}" type="password"> <br><br>
			level:<input name="level" value="${c.level}" type="text"> <br><br>
			status:<input name="status" value="${c.status}" type="text"> <br><br>-->
			<input type="hidden" value="${c.id}" name="id">
			<input type="submit" value="更新密码">
		</form>
		

	</div>	
 </div>
