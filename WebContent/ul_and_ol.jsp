<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script language="javascript" >
window.onload = function(){
	document.getElementById("div_1").style.display="";  //不处理
	document.getElementById("div_2").style.display="";  //不处理
	document.getElementById("row3column2").style.visibility ="hidden"; //不显示(但是位置保留)
	document.getElementById("row4column2").style.visibility ="visible"; 
}
</script>
<style type="text/css">
#div_1 {
    float:left;
    width:99%;
    border:2px solid #0F0;  /* 绿色边框*/
    padding-right:0.5%;
    padding-left:0.5%;
     margin-top:10px;
    margin-bottom:10px;
}
#div_1 li{
    list-style-type:none;
    float:left; /*必须向左对齐，不然弄不成表格 */
    width:33%;
    text-align:center;
    background:#ccc;
    margin-right:2px;
    margin-bottom:2px;
    line-height:40px;
    font-size:14px;
}
#div_1 li.bt{ font-weight:bold; background:#999;} /*制灰 */

#div_2 {
    float:left;
    width:99%;
    border:2px solid #00F; /* 蓝色边框*/
    padding-right:0.5%;
    padding-left:0.5%;
     margin-top:10px;
    margin-bottom:10px;
}

#div_2 li{
    list-style-type:none;
     float:left;
    width:33%;
    text-align:center;  /* 内文本居中*/
    /*background:#ccc;*/
    margin-right:2px;
    margin-bottom:2px;
    line-height:40px;
    font-size:14px;
}

#div_2 ul{
   
}

#div_3 {
 border:1px solid #F00; /* 红色边框*/
  float:left;
  width:99%;
    margin-top:10px; /*外边距 */
    margin-bottom:10px;
    padding-right:0.5%;
    padding-left:0.5%;
}

#div_3 li{
    border:1px solid #F00; /* 红色边框*/
     list-style-type:none;
     float:left;
    width:47.5%;
    text-align:center;  /* 内文本居中*/
    /*background:#ccc;*/
    padding-top:2px;
    padding-bottom:2px;
    padding-right:0.5%;
    padding-left:0.5%;
    margin-top:2px;
    margin-bottom:2px;
    margin-right:0.5%;
    margin-left:0.5%;
    line-height:30px;
    font-size:14px;
}

#div_4 {
 border:1px solid #F00; /* 红色边框*/
  float:left;
  width:99%;
    margin-top:10px; /*外边距 */
    margin-bottom:10px;
    padding-right:0.5%;
    padding-left:0.5%;
}
#div_4 ul{
 list-style:none; padding:0px; margin:0px; width:100%;
height:20px; line-height:20px; border:1px solid #99CC00;
border-top:0px; font-size:12px;
}
#div_4 li{
 display:block; width:33%; float:left;text-indent:2em;
}
#div_4 ul.th{ background:#F1FADE; font-weight:bold; border-top:1px; text-align:center;  /* 内文本居中*/} 
</style>
</head>
<body>

<div id="div_1">
        <ul>                
            <li class="bt">0</li>
            <li class="bt">0</li>
            <li class="bt">0</li>
            
            <li >1</li>
            <li >1</li>
            <li >1</li>
            
            <li>2</li>
            <li>2</li>
            <li>2</li>
            
            <li>3</li>
            <li>3</li>
            <li>3</li>
            
            <li>4</li>
            <li style="width:66%" id="row4column2">4</li>
        </ul>
    </div>
    
 <div id="div_2" title="div框">
        <ul>                
            <li >0</li>
            <li >0</li>
            <li >&nbsp;</li>
            
            <li >1</li>
            <li >1</li>
            <li >1</li>
            
            <li>&nbsp;</li>

            <li id="row3column2">2</li>
            <li>2</li>
            
            <li>3</li>
            <li>3</li>
            <li>3</li>
            
            <li>4</li>
            <li>4</li>
            <li>4</li>
        </ul>
    </div>   
    <div id="div_3">
    <ul>
            <li >0</li>
            <li >&nbsp;</li>
            
            <li >1</li>
            <li >1</li>
    </ul>
    </div>
    
     <div id="div_4">
    <ul class="th">
            <li >班级</li>
            <li >学号</li>
            <li >姓名</li>
            
            <li >a</li>
            <li >111</li>
            <li >小明</li>
            
            <li>a</li>
            <li>112</li>
            <li>小红</li>
            
            <li>b</li>
            <li>113</li>
            <li>3</li>
            
            <li>b</li>
            <li>114</li>
            <li>小灰</li>
    </ul>
    </div>
    
</body>
</html>