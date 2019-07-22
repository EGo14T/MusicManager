<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/7/18
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hello${name}</h1>
<script>
    window.addEventListener("popstate", function(e) {
        //alert("我监听到了浏览器的返回按钮事件啦");//根据自己的需求实现自己的功能
        //window.location.reload();
        $.ajax({
            type:'post',
            url:'/hi',
            dateType:'html',
            data:{},
            success:function (data) {
                $('#fff').html(data);
                history.pushState(stateobj,'',"/hi")
            }
        })
    }, false);
</script>
</body>
</html>
