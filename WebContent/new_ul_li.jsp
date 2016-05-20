<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ul和li制作的新表格</title>
<style type="text/css">
body{
width:auto;
height:auto;
padding:0;
margin:20px 0;
font-size:12px;
font-family:Verdana, Arial, Helvetica, sans-serif;
}

#div_1 {
    width:100%;
    float:center;
}

#div_1 ul{
clear:both;
padding:0;
margin:0;
list-style:none;
}

#div_1 li{
float:left;
display: block;
width:12%;
height:auto;
padding:2px;
margin:0;
border-right:#000 1px solid;
border-bottom:#000 1px solid;
line-height:16px;
color:000;
}

#div_2 {
    width:100%;
    float:center;
}

#div_2 ul{
 margin:0px;
 padding:0px;
 width:100%;
 hight:30px;
 }
#div_2  li{
 float:left;
 list-style-type:none;
 border-top:#000 solid 1px;
 border-left:#000 solid 1px;
 width:33%;

 }
#div_2 li.border-r{
               border-right:#000 solid 1px;
                }
#div_2  li.border-b{
               border-bottom:#000 solid 1px;
                }
#div_2  li.border-l{
               border-right:#000 solid 1px;
               border-bottom:#000 solid 1px;
                }


</style>
</head>

<body>


	<div id="div_1">
		<div>
			<ul>
				<li>ID</li>
				<li>当日排名</li>
				<li>排名变化趋势</li>
				<li>一周平均排名</li>
				<li>排名变化趋势</li>
				<li>一月平均排名</li>
				<li>排名变化趋势</li>
			</ul>
		</div>
		<div>
			<!--此处开始循环 -->
			<ul>
				<li>0001</li>
				<li>1234</li>
				<li>↑ 200</li>
				<li>1856</li>
				<li>↓ 56</li>
				<li>1650</li>
				<li>↓ 156</li>
			</ul>
			<!--到此循环结束 -->
			<ul>
				<li>0002</li>
				<li>1234</li>
				<li>↑ 200</li>
				<li>1856</li>
				<li>↓ 56</li>
				<li>1650</li>
				<li>↓ 156</li>
			</ul>
			<ul>
				<li>0003</li>
				<li>1234</li>
				<li>↑ 200</li>
				<li>1856</li>
				<li>↓ 56</li>
				<li>1650</li>
				<li>↓ 156</li>
			</ul>
			<ul>
				<li>0004</li>
				<li>1234</li>
				<li>↑ 200</li>
				<li>1856</li>
				<li>↓ 56</li>
				<li>1650</li>
				<li>↓ 156</li>
			</ul>
			<ul>
				<li>0005</li>
				<li>1234</li>
				<li>↑ 200</li>
				<li>1856</li>
				<li>↓ 56</li>
				<li>1650</li>
				<li>↓ 156</li>
			</ul>
		</div>
	</div>
	
	<div id="div_2">
		<ul>
			<li>&nbsp;</li>
			<li>&nbsp;</li>
			<li class="border-r">&nbsp;</li>
		</ul>
		<ul>
			<li>&nbsp;</li>
			<li>&nbsp;</li>
			<li class="border-r">&nbsp;</li>
		</ul>
		<ul>
			<li>&nbsp;</li>
			<li>&nbsp;</li>
			<li class="border-r">&nbsp;</li>
		</ul>
		<ul>
			<li class="border-b">&nbsp;</li>
			<li class="border-b">&nbsp;</li>
			<li class="border-l">&nbsp;</li>
		</ul>
	</div>


</body>
</html>