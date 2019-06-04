<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/5/15
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>昕音乐</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet" href="/css/APlayer.min.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">昕音乐</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    帅比昕
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">我的音乐</a>
                    <dl class="layui-nav-child">
                        <dd><a href="music_list" target="iframe">音乐列表</a></dd>
                        <dd><a href="javascript:;">下载管理</a></dd>
                        <dd><a href="javascript:;">我的收藏</a></dd>
                    </dl>
                </li>
            </ul>

        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe name="iframe" style="width: 100%" height="100%" src=""></iframe>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        <div id="player1" ></div>
    </div>
</div>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/APlayer.min.js"></script>
<script src="layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
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

    });
</script>
</body>
</html>
