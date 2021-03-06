<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>demo</title>
    <link rel="stylesheet" href="css/index.css"/>
    <link href="https://cdn.bootcss.com/font-awesome/5.8.0/css/all.css" rel="stylesheet"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<div id="content">
    <div class="header">
        <div class="container">
            <div class="header_left">
                <a href="#">
                    <div class="img"></div>
                </a>
            </div>
            <div class="header_nav">
                <ul>
                    <li><a href="javascript:void(0)" onclick="refreshFunction()">发现音乐</a></li>
                    <li><a href="mymusic">我的音乐</a></li>
                    <li><a href="friends" class="action">朋友</a></li>
                    <li><a href="#">商城</a></li>
                    <li><a href="#">音乐人</a></li>
                    <li><a href="#">下载客户端</a></li>
                </ul>

            </div>
            <div class="header_right">
                <div class="search-box">
                    <input class="search-txt" type="text" placeholder="音乐/歌单/用户" />
                    <a class="search-btn" href="#">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="subnav">FRIENDS</div>
        <div class="subnav_1"></div>
    </div>
</div>


    <div class="footer">
        friends
    </div>

<script>
    function refreshFunction(){
        $.ajax({
            type:'post',
            url:'/main',
            dateType:'html',
            data:{},
            success:function (data) {
                $('#content').html(data);
                window.history.pushState(data,'',"/main")
            }
        })
    }

</script>
    
</body>
</html>