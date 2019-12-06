<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<title>提交数据</title>
<script type="text/javascript" src="./js/jquery.js"></script>
	<%--<script>--%>
        <%--$(function () {--%>
		<%--$('#sender').click(function(){--%>
            <%--var username=document.getElementById('username').value;--%>
            <%--var password=document.getElementById('password').value;--%>
            <%--var category={"username":username,"password":password};--%>
            <%--var jsonData = JSON.stringify(category);--%>
            <%--var page="Submit";--%>
            <%--$.ajax({--%>
                <%--type:"post",--%>
                <%--url: page,--%>
                <%--data:jsonData,--%>
                <%--dataType:"json",--%>
                <%--contentType: "application/json;charset=UTF-8",--%>
                <%--success: function(data){--%>
<%--//                alert(data);--%>
<%--//                alert(data.username);--%>
<%--//                alert(data.password);--%>
                <%--alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");--%>
                <%--}--%>
            <%--});--%>
<%--//        alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");--%>
        <%--});--%>
        <%--})--%>
	<%--</script>--%>
</head>
<body>
    <form>
			Name:<input name="username" value="" type="text"> <br><br>
			Password:<input name="password" value="" type="password"> <br><br>
			Status:<input name="status" value="1" type="text"> <br><br>
			<input type="submit" value="增加" <%--id="sender"--%>>
	</form>
    <div id="messageDiv"></div>
<%--<script>--%>
		<%--$('#sender').click(function(){--%>
        <%--var username=document.getElementById('username').value;--%>
        <%--var password=document.getElementById('password').value;--%>
        <%--var category={"username":username,"password":password};--%>
        <%--var jsonData = JSON.stringify(category);--%>
        <%--var page="Submit";--%>
        <%--$.ajax({--%>
            <%--type:"post",--%>
            <%--url: page,--%>
            <%--data:jsonData,--%>
            <%--dataType:"json",--%>
            <%--contentType: "application/json;charset=UTF-8",--%>
            <%--success: function(data){--%>
<%--//                alert(data);--%>
<%--//                alert(data.username);--%>
<%--//                alert(data.password);--%>
<%--//                alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");--%>
            <%--}--%>
        <%--});--%>
<%--//        alert("提交成功，请在Tomcat控制台查看服务端接收到的数据");--%>
    <%--});--%>
    <%--</script>--%>
</body>
</html>
