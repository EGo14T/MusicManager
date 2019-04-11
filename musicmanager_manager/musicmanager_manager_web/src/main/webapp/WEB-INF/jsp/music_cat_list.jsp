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

<%--右键菜单--%>
<div id="mm" class="easyui-menu" style="width:120px;">
    <div onclick="append()" data-options="iconCls:'icon-add'">添加</div>
    <div onclick="rename()" data-options="iconCls:'icon-remove'">修改</div>
    <div onclick="remove()" data-options="iconCls:'icon-remove'">删除</div>
</div>


<script type="text/javascript">
    $(function () {

        $('#musicCategory').tree({
            url: "/music_category/list",

            onContextMenu: function(e, node){
                e.preventDefault();
                // select the node
                $('#musicCategory').tree('select', node.target);
                // display context menu
                $('#mm').menu('show', {
                    left: e.pageX,
                    top: e.pageY
                });
            },

            onAfterEdit:function (node) {

                var _tree = $('#musicCategory');


                if(node.id == 0){
                    $.post("/music_category/add",{parentId:node.parentId,name:node.text},function (data) {

                        if (data.status==200){
                            _tree.tree('update', {
                                target: node.target,
                                id : data.msg
                            });
                        }else{
                            $.messager.alert("添加分类失败");
                        }
                    })
                }
            }
        });
    });

//添加的方法
    function append(){

        var tree = $('#musicCategory');
        var node = tree.tree('getSelected');

        tree.tree('append', {
            parent: (node?node.target:null),
            data: [{
                id : 0,
                parentId : node.id,
                text : ''
            }]
        });

        var _node = tree.tree("find",0);
        tree.tree("select",_node.target).tree("beginEdit",_node.target);
    };

    function rename() {
        var tree = $('#musicCategory');
        var node = tree.tree('getSelected');

        tree.tree("beginEdit",node.target);
    };

    function remove() {
        var tree = $('#musicCategory');
        var node = tree.tree('getSelected');

        tree.tree("remove",node.target);
    };




</script>
</body>
</html>
