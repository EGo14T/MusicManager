<%--
  Created by IntelliJ IDEA.
  User: EGo1ST
  Date: 2019/3/31
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>音乐列表</title>
    <link rel="stylesheet" type="text/css" href="/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/css/themes/icon.css">
    <link rel="stylesheet" href="/css/APlayer.min.css">

    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/APlayer.min.js"></script>
    <script type="text/javascript" src="/js/formatter.js"></script>


</head>
<body>
<!--使用标签创建表格-->
<!--<table class="easyui-datagrid"
       data-options="url:'/music/list',fitColumns:true,singleSelect:true,pageSize:5,pageList:[5,10,15,20]"pagination="true" rownumbers="true">
    <thead>
    <tr>
        <th data-options="field:'id',width:100">id</th>
        <th data-options="field:'name',width:100">歌曲名</th>
        <th data-options="field:'singer',width:100">歌手</th>
        <th data-options="field:'album',width:100">专辑</th>
        <th data-options="field:'length',width:100">时长</th>

    </tr>
    </thead>
</table>-->

<table id="dg"></table>
<script type="text/javascript">



    $(function () {

        var songList = [];
        var songRow = [];
        var unNewArr = [];
        var arrNum = []; // 声明一个数组 里面放入歌单的id值 长度为songNow


        $.getJSON("http://localhost:8080/rest/music/list",function (result) {
            $.each(result,function (i,item) {
                var obj = {};
                obj.id = item["id"];
                obj.title = item["name"];
                obj.author =  item["artist"];
                obj.url =  "${pageContext.request.contextPath}/images/"+item["url"]+".mp3";
                obj.lrc =  "images/"+item["lrc"]+".lrc";
                obj.cover = "images/"+item["id"]+".png";
                songList.push(obj);

            });

        });
        $('#dg').datagrid({
            url:'/music/list',
            singleSelect:true,
            fitColumns:true,
            scrollbarSize:0,
            striped:true,

            //分页显示
            // pagination:true,
            // rownumbers:true,
            // pageSize:5,pageList:[5,10,15,20],
            columns:[[
                {field:'id',width:10,align:'center'},
                {field:'opt',title:'操作',width:50,align:'center',
                    formatter:function(){
                        var btn = '<a class="love" href="javascript:alert(123)"/>'+'<a class="download" href="javascript:alert(1203)"/>';
                        return btn;
                    }
                },
                {field:'name',title:'音乐标题',width:200},
                {field:'singer',title:'歌手',width:150},
                {field:'album',title:'专辑',width:150},
                {field:'length',title:'时长',width:50}
            ]],
            onLoadSuccess:function(){
                $('.love').linkbutton({plain:true,iconCls:'icon-love-on'});
                $('.download').linkbutton({plain:true,iconCls:'icon-download'});
            },
        onDblClickRow: function(){
                console.log("${pageContext.request.contextPath}");
                var row = $('#dg').datagrid('getSelected');
                songRow = [];
                arrNum = [];
                //获取选中行
                var obj1 = {};
                obj1.id = row.id;
                obj1.title = row.name;
                obj1.author = row.singer;
                obj1.url =  "${pageContext.request.contextPath}/images/"+row.id+".mp3";
                obj1.lrc =  "images/"+row.id+".lrc";
                obj1.cover = "images/"+row.id+".png";
                songRow.push(obj1);
                unNewArr = songRow.concat(songList);

                $.each(unNewArr,function (i,item) {                 //获取当前音乐列表的下标
                    var arrobj;
                    arrobj = item["id"];
                    arrNum.push(arrobj)   //当前音乐列表的下标  未去重
                });

                function unique(arr){
                    var res =[];
                    var res1 = [];
                    var resNew = [];
                    var a = arr.indexOf(row.id,arr.indexOf(row.id)+1);
                    //console.log(a);   //点击的位置（需要重复排列的位置）
                    for(var i=a,len=arr.length;i<len;i++){
                        var obj = arr[i];
                            res.push(obj);
                    }
                    for (var b = 1; b <a ; b++) {
                        var obj1 = arr[b];
                        res1.push(obj1);
                    }
                    var resAll = res.concat(res1);
                    //console.log(resAll);

                    for (var i = 0; i < resAll.length; i++) {
                        var objNew = {};
                        var s = resAll[i];
                        objNew = songList[s-1];
                        //console.log(s);
                        resNew.push(objNew)
                    }
                    return resNew;
                }
                var arr = unique(arrNum);
                //console.log(arr);
                //console.log(arrNum);

                var ap = new APlayer({
                    element: window.parent.document.getElementById('player1'),
                    autoplay: true,
                    lrcType:3,
                    showlrc:true,
                    audio: arr
                });
                ap.play();
            }

        });

    });

</script>
</body>
</html>
