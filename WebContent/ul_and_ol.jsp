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

</style>
<link href="./css/ul_and_li.css" rel="stylesheet">
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
            <li>灰太狼</li>
            
            <li>b</li>
            <li>114</li>
            <li>小灰</li>
    </ul>
    </div>
    <div id="div_5">
    <ul>
          <li></li>         
          <li> </li>         
          <li> </li>
          
          <li></li>         
          <li> </li>         
          <li> </li>
          
          <li></li>         
          <li> </li>         
          <li> </li>
          
          <li></li>         
          <li> </li>         
          <li> </li>
          
          <li></li>         
          <li> </li>         
          <li> </li>
          
    </ul>
    </div>
</body>
</html>