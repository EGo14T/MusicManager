<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/6/19
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>开始使用layer</title>
</head>
<body>
<button id="test1" class="layui-btn">运行上述例子</button>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>

<script>

    //弹出一个提示层
    $('#test1').on('click', function(){
        layer.msg('hello',{time:900});
    });

</script>

当你对此建立了一定的初始，你应该去详看API手册了。

</body>
</html>