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
    <script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
    <title>登录昕音乐</title>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/Login.css">
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

        $.post("loginRequest",{username:name,password:pwd},function(){

        })

    }
</script>
</html>
