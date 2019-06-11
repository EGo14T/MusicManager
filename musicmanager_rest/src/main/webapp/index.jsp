<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/6/4
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
    $(function () {

        var songList = [];

        $.getJSON("http://localhost:8088/rest/music/list",function (result) {
            $.each(result,function (i,item) {
                var obj = {};
                obj.title = item["name"];
                obj.author =  item["artist"];
                obj.url =  "images/"+item["url"]+".mp3";
                obj.lrc =  "images/"+item["lrc"]+".lrc";
                songList.push(obj);
            })
            console.log(songList)
        })});
</script>

</body>
</html>
