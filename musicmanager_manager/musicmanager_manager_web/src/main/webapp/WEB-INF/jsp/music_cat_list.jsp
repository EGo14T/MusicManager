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
    <div onclick="update()" data-options="iconCls:'icon-remove'">修改</div>
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
            }
        });
    });
</script>
</body>
</html>
