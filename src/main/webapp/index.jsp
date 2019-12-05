<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Aliali后台管理系统</title>
    <a href="JSON" >用户json</a><br/>
    <a href="JSON2">视频json</a>
		 <link rel="stylesheet" href="./res/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
  <style type="text/css">
      .layui-this{
        background-color:transparent;
      }
  </style>


</head>
<body>
    <!--顶部-->

    <div class="nav">
	        <div class="left">后台管理系统</div>
	        <!--<div class="right">
	            <ul class="layui-nav">
                    <li class="layui-nav-item"><a href="login.jsp">登录</a></li>
                    <li class="layui-nav-item"><a href="exit.jsp">退出</a></li>
	            </ul>
	        </div>-->
	</div>
	<!--中部-->
    <div class="main layui-col-space5">
               <div class="left layui-col-md2"  >
                    <ul class="layui-nav layui-nav-tree" lay-filter="test1">
                          <li class="layui-nav-item layui-nav-itemed layui-this" id="a">
                              <a id="1">用户管理</a>
						              </li>
                          <li class="layui-nav-item layui-nav-itemed" id="b">
                              <a id="2">视频管理</a>
						              </li>					   
                    </ul>
               </div>
               <div class="right layui-col-md10">
                       <iframe id="iframe1" src="muser.html" frameborder="0" scrolling="yes"></iframe>
                       <iframe id="iframe2" src="welcome.html" frameborder="0" scrolling="yes"></iframe>
               </div>
     </div>
    <button id="btn">发送ajax的请求</button>
</body>
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./res/layui/layui.js"></script>

<script type="text/javascript">

   /* layui.use('element',function(){
      var element = layui.element;
      element.on('nav(test1)',function(elem){
           if(elem.attr("id")==1){
                 $("iframe").attr("src","muser.html");
           }
           if(elem.attr("id")==2){
                 $("iframe").attr("src","welcome.html");
           }
      })
    })*/
    $(document).ready(function(){
         $(".main .left ul li a").click(function(e){
               var uid=e.target.id;
               if(uid==1){
                   var fid=$("#"+uid).parent().attr('id');
                   $("#"+fid).addClass('layui-this');
                   $("#"+fid).next().removeClass('layui-this');
                   $('iframe').attr('src','');
                   $('iframe').attr('src','muser.html');
               }
               if(uid==2){
                   var fid=$("#"+uid).parent().attr('id');
                   $("#"+fid).addClass('layui-this');
                   $("#"+fid).prev().removeClass('layui-this');
                   $('iframe').attr('src','');
                   $('iframe').attr('src','mvideo.html');
               }
         })
    })
   $(function(){
       $("#btn").click(function(){
           // alert("hello btn");
           // 发送ajax请求

           $.ajax({
               // 编写json格式，设置属性和值
               url:"testAjax",
               contentType:"application/json;charset=UTF-8",
               data:'{"username":"hehe","password":"123"}',
               dataType:"json",
               type:"post",
               success:function(data){
                   // data服务器端响应的json的数据，进行解析
                   alert(data);
                   alert(data.username);
                   alert(data.password);
                   console.log(data);
               }
           });

       });
   });
</script>
</html>