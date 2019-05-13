<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/5/8
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>getJSON获取数据</title>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <style type="text/css">
        #divframe {
            border: 1px solid #999;
            width: 500px;
            margin: 0 auto;
        }
        .loadTitle {
            background: #CCC;
            height: 30px;
        }
    </style>
    <script type="text/javascript">
        $(function(){
            $("#btn").click(function(){
                $.getJSON("/music_category/list",function(data){
                    var $jsontip = $("#jsonTip");
                    var strHtml = "";//存储数据的变量
                    $jsontip.empty();//清空内容
                    $.each(data,function(infoIndex,info){
                        strHtml += "姓名："+info["id"]+"<br>";
                        strHtml += "性别："+info["text"]+"<br>";
                        strHtml += "邮箱："+info["email"]+"<br>";
                        strHtml += "<hr>"
                    })
                    $jsontip.html(strHtml);//显示处理后的数据
                })
            })
        })
    </script>
</head>
<body>
<div id="divframe">
    <div class="loadTitle">
        <input type="button" value="获取数据" id="btn"/>
    </div>
    <div id="jsonTip"> </div>
</div>
</body>
</html>
