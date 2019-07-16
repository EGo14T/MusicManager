<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/7/15
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/Login.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>layui/css/layui.css">

    <script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/layer/layer.js"></script>
    <script type="text/javascript" src="<%=basePath%>layui/layui.js"></script>

    <title>登录昕音乐</title>
</head>


<body>
<div class="box">
    <h1>Login</h1>
    <input type="text" id="userid" placeholder="Username" />
    <input type="password" id="userpwd" placeholder="Password" />
    <a class="submit" href="javascript:void(0);" onclick="Login()">Login</a>
</div>
</body>

<script type="text/javascript">
    function Login() {
        var name = $("#userid").val();
        var pwd = $("#userpwd").val();

        $.post("loginRequest",{username:name,password:pwd},function(data){
            if (data.status==200){
                window.location.replace("index");
            }else if (data.status==400){
                layer.msg('您输入的密码错误，请重新输入', {
                    time: 900
                });
            }else if (data.status==404){
                layer.msg('您输入的用户名不存在，请重新输入', {
                    time: 900
                });
            }
        })

    }
</script>
</html>
