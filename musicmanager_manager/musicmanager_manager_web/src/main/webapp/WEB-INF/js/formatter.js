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