<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/5/5
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hi${name}</h1>
<script>
    window.addEventListener("popstate", function(e) {
        //alert("我监听到了浏览器的返回按钮事件啦");//根据自己的需求实现自己的功能
        window.location.reload();

    }, false);
</script>
</body>
</html>
