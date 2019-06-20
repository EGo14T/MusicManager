/**
  * 时间格式YYY-mm-dd hh:mm:ss
  * @param date
  * @returns {String}
  */
function comFormatDate(date) {
    var day = new Date(date);
    var Year = 0;
    var Month = 0;
    var Day = 0;
    var CurrentDate = "";
//初始化时间 
//Year= day.getYear();//有火狐下2008年显示108的bug 
    Year= day.getFullYear();//ie火狐下都可以 
    Month= day.getMonth()+1;
    Day = day.getDate();
    Hour = day.getHours();
    Minute = day.getMinutes();
    Second = day.getSeconds();
    CurrentDate += Year + "-";
    if (Month >= 10 ) {
        CurrentDate += Month + "-";
    }
    else {
        CurrentDate += "0" + Month + "-";
    }
    if (Day >= 10 ) {
        CurrentDate += Day ;
    }
    else {
        CurrentDate += "0" + Day ;
    }
    if(Hour>=10){
        CurrentDate +=" "+Hour;
    }else{
        CurrentDate +=" "+"0"+Hour;
    }
    if(Minute>=10){
        CurrentDate +=":"+Minute;
    }else{
        CurrentDate +=":"+"0"+Minute;
    }
    if(Second>=10){
        CurrentDate +=":"+Second;
    }else{
        CurrentDate +=":"+"0"+Second;
    }
    return CurrentDate;
}

//重新渲染方法
function draw(){
    $('.loveOff').linkbutton({plain:true,iconCls:'icon-love-off'});
    $('.loveIn').linkbutton({plain:true,iconCls:'icon-love-on'});
    $('.download').linkbutton({plain:true,iconCls:'icon-download'});
}



//收藏图标按钮的切换
function loveInOrOff(value,row,index) {
    if (value == 0){
        var btn = '<a id = "lovebtn'+row.id+'" class="loveOff" href="javascript:void(0);" onclick="loveOff('+ row.id+ ',' +value + ')"/>'
            +
            '<a class="download" href="javascript:alert(0)"/>';
        return btn;
    }
    if (value == 1){
        var btn = '<a class="loveIn" href="javascript:void(0);" onclick="loveIn('+ row.id+ ','+value +')"/>'
            +
            '<a class="download" href="javascript:alert(1)"/>';
        return btn;
    }
    if (value == 3){
        var btn = '<a href="#" class="easyui-linkbutton" data-options="iconCls:\'icon-love-off\'"></a>';
        return btn;
    }


    
}
//取消收藏----->收藏
function loveOff(row,value) {
    $('#dg').datagrid('getRows')[row-1].love = '1';
    $('#dg').datagrid('refreshRow',row-1);
    draw();
    $.post("lovemusic",{id:row,love:1},function(data){
        if (data.status==200){
            layer.msg('已添加到我喜欢的音乐', {
                icon: 6,
                time: 900
            });
        }

    });

}

//收藏---->取消收藏
function loveIn(row,value) {
    $('#dg').datagrid('getRows')[row-1].love = '0';
    $('#dg').datagrid('refreshRow',row-1);
    draw();

    $.post("lovemusic",{id:row,love:0},function(data){
        if (data.status==200){
            layer.msg('取消喜欢成功', {
                icon: 5,
                time: 900
            });
        }
    });
}






