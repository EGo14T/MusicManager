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
                {field:'id',title:'id',width:20,align:'center'},
                {field:'name',title:'歌曲名称',width:100},
                {field:'singer',title:'歌手',width:100},
                {field:'album',title:'专辑',width:100},
                {field:'length',title:'时长',width:100,}
            ]],

            onDblClickRow: function(){

                var row = $('#dg').datagrid('getSelected');
                //获取选中行

                var ap = new APlayer({
                    element: document.getElementById('player1'),
                    autoplay: true,
                    lrcType:3,
                    showlrc:true,
                    audio: {
                        title: row.name,
                        author: row.singer,
                        url: "images/"+row.id+".mp3",
                        lrc: 'images/33.lrc',
                    }
                });
                ap.play();
            },


        });


    });

</script>
</body>
</html>
