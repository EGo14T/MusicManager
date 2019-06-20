<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/3/25
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>昕音乐</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/APlayer.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>layui/css/layui.css">


    <script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/layer/layer.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>layui/layui.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/ajaxFileUpload.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/APlayer.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/formatter.js"></script>
</head>

<body class="easyui-layout" onselectstart="return false" >

<!--顶层布局-->

<div data-options="region:'north'" style="height:100px;">

</div>

<div class="layui-side layui-bg-black"data-options="region:'west',collapsible:false">
    <div class="layui-side-scroll" >

        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree">
            <li class="layui-nav-item layui-nav-itemed">
                <span style="cursor: default">&nbsp;&nbsp;&nbsp;我的音乐</span>
                <dl class="layui-nav-child">
                    <dd onclick="addtabs('music_cat_list','音乐分类')"><a href="JavaScript:";>音乐分类</a></dd>
                    <dd onclick="addtabs('music_list','音乐列表')"><a href="JavaScript:";>音乐列表</a></dd>
                    <dd><a onclick="addtabs()">我的收藏</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>


<div data-options="region:'center'">
    <div id="tabs" class="easyui-tabs" showHeader="false"/>

    </div>

</div>

<div data-options="region:'south',split:false" style="height:100px;" border="false">
    <div id="player1" ></div>
</div>


<script>


    $('#tt').tree({
        onClick: function(node){
            var tabs = $("#tabs");
            var tab = tabs.tabs("getTab",node.text);
            if(tab){
                tabs.tabs("select",node.text);
            }else {
                tabs.tabs('add',{
                    title:node.text,
                    content:'Tab Body',
                    href:node.attributes.url,
                    closable:true
                });
            }
        }
    });

    function addtabs(ura,te) {
        var tabs = $("#tabs");
        var tab = tabs.tabs("getTab",te);
        var lay = $("dd");
        if(tab){
            tabs.tabs("select",te);
        }else {
            var lay = $("dd");
            tabs.tabs('add',{
                title:te,
                content:'Tab Body',
                href:ura,
                closable:true
            });
        }
    }

    var ap = new APlayer({
        element: document.getElementById('player1'),
        narrow: false,
        showlrc: true,
        audio: [
            {
                name: '昕音乐',
                artist: 'EGo1ST',
                cover: 'cover1.jpg'
            }
        ]
    });


</script>
</body>
</html>
