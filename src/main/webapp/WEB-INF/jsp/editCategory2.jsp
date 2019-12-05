<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<title></title>  
<script type="text/javascript" src="./js/jquery.js"></script>
<script>

function GetRequest() {
    var url = location.search; //获取url中"?"符后的字串
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for(var i = 0; i < strs.length; i ++) {
            theRequest[strs[i].split("=")[0]]=decodeURI(strs[i].split("=")[1]);
        }
    }
    return theRequest;
} 

//调用

$(document).ready(function(){ 
	var Request = new Object();
	Request = GetRequest();
	var id,status;
	id = Request['id'];
	status= Request['status'];
    $("#v_id").val(id);
    $("#v_status").val(status);
});
</script>  
</head>  
<body>  
 <div style="width:500px;margin:0px auto;text-align:center">
	<div style="text-align:center;margin-top:40px">
		<form method="post" action="updateCategory2">
			status:<input name="v_status" id="v_status" type="text"> <br><br>
			<!--  password:<input name="password" value="${c.password}" type="password"> <br><br>
			level:<input name="level" value="${c.level}" type="text"> <br><br>
			status:<input name="status" value="${c.status}" type="text"> <br><br>-->
			<input type="hidden" id="v_id"  name="v_id">
			<input type="submit" value="更新状态">
		</form>
	</div>	
 </div>
 </body>  
</html>
    