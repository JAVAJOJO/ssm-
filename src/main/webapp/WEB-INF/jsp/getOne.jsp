<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用AJAX以JSON方式获取数据</title>
    <script type="text/javascript" src="./js/jquery.js"></script>
</head>
<body>
<input type="button" value="通过AJAX获取一个Hero对象---" id="sender">

<div id="messageDiv"></div>

<script>
    $('#sender').click(function(){
        var url="getOneCategory";
        $.post(
            url,
            function(data) {
                var json=JSON.parse(data);
                var name =json.UserName;
                //var id = json.category.id;
                $("#messageDiv").html("分类id："+ id + "<br>分类名称:" +name );
            });
    });
</script>
</body>

</body>
</html>
