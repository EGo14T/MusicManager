<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/4/1
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<ul id="musicCategory" class="easyui-tree"></ul>


<script type="text/javascript">
    $(function () {

        $('#musicCategory').tree({
            url: "/music_category/list"
        });
    });
</script>
</body>
</html>
