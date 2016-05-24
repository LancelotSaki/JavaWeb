<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>CSS做出来的文本框</title>
<link href="./css/textEdit.css" rel="stylesheet">
</head>

<body>

默认时样式：<br />
<div class="l"></div>
<div class="c">
  <input class="i" />
</div>
<div class="r"></div>
<div style="clear:both;"></div>
<br />
获得焦点时样式：<br />
<div class="l h"></div>  <!-- 左 -->
<div class="c h">        <!-- 中 -->
  <input class="i" />
</div>
<div class="r h"></div>   <!--右 -->

</body>
</html>