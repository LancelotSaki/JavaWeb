<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>多功能界面整合</title>

<link rel="shortcut icon" href="/favicon.ico">
<link href="./css/common.css" rel="stylesheet">
<link href="./css/component.css" rel="stylesheet">
<script src="./js/jquery-1.9.1.js"></script>
<script src="./js/SYUI.js"></script>


</head>

<body>
	<div id="warp">
	
	<h2 class="title">1、表单验证</h2>
	<div class="content">
	    <input type="text" value="" name="name1" class="defaultInput"
	    	data-config='{ "position": "top", "length":[4,5] }' data-pattern="required number rangeLength" >
	    	
	    <input type="text" value="" name="name3" class="defaultInput"
	    	data-config='{ "length":[10] }' data-pattern="kk length" >
	    	
	    <input type="text" value="" name="name2" class="defaultInput"
	    	data-config='{ "length":[5,-1] }' data-pattern="required number minLength" >
	    	
	   	<input type="text" value="" name="name4" class="defaultInput"
	    	data-config='{ "length":[0,100] }' data-pattern="required range" >
	    
	    <div class="marginTop20"><span class="pressButton" id="validateBtn">提 交</span></div>
	</div>
	
	<h2 class="title">2、单选</h2>
	<div class="content">
	    <div class="SYUI SYUI-radio" name="sex" data-pattern="required" >
	        <label class="btn"><input type="radio" name="sex">男</label>
	        <label class="btn"><input type="radio" name="sex">女</label>
	        <label class="btn"><input type="radio" name="sex" disabled>未知</label>
	    </div>

	    <div class="SYUI SYUI-radio" name="ok" data-pattern="required" >
	        <label class="btn"><input type="radio" name="ok">html</label>
	        <label class="btn"><input type="radio" name="ok">css</label>
	        <label class="btn"><input type="radio" name="ok" id="other">其他</label>
	    </div>
	    
	</div>
	
	<h2 class="title">3、多选</h2>
	<div class="content">
	    <div class="SYUI SYUI-checkbox" name="fruit" data-pattern="required rangeChecked" data-config='{ "length":[2,4] }' >
	        <label class="btn"><input type="checkbox" name="fruit">苹果</label>
	        <label class="btn"><input type="checkbox" name="fruit" disabled >梨子</label>
	        <label class="btn"><input type="checkbox" name="fruit">香蕉</label>
	        <label class="btn"><input type="checkbox" name="fruit">桃子</label>
	        <label class="btn"><input type="checkbox" name="fruit">木瓜</label>
	        <label class="btn"><input type="checkbox" name="fruit">西瓜</label>
	    </div>
	</div>
	
	<h2 class="title">4、下拉框</h2>
	<div class="content">
	    <div class="SYUI SYUI-select" name="abc" data-config='{ "position": "right", "length":[2,3] }' data-pattern="required"
	    	data-search = "true"
	    	data-disabled = "false"
	    	data-value = ""
	    	data-num = "10" 
	    	data-position = "down"
	    	data-change = "changeFn"
	    	data-ajax = "callBackFn"
	    	data-multiple = "false"
	    	>
	    	<ul class="menu">
	    		<li data-value = "0" ><a href="javascript:;">html</a></li>
	    		<li data-value = "1" ><a href="javascript:;">css</a></li>
	    		<li data-value = "2" ><a href="javascript:;">javascript</a></li>
	    		<li class="line"></li>
	    		<li data-value = "3" ><a href="javascript:;">jquery</a></li>
	    	</ul>
	    </div>
	</div>
	
</div>

<h2 class="title">5、选项框</h2>
<div> 

     <select id="code" name="plugin" title="国家">
     <option value="1cn">cn</option>
     <option value="2us">us</option>
     <option value="3en">en</option>
</select> 

</div>
<script>

    var validate = SYUI.validate( { el: "body" } );
    
    var selectRadioBox = SYUI.selectRadioBox({ 
    	el: "body",
    	changeSelectRadioBox: function(e) {
    		console.log(e.id);
	        if(e.id === "other"){
	            $("#ceshi").attr("data-pattern","required number");
	        } else {
	            $("#ceshi").attr("data-pattern","");
	        }
	     },
	     changeFn: function( e, t ) {
	     	console.log( e.target, t );
	     }
	});

	$( "#validateBtn" ).on( "click", function() {
		validate.returnValue();
	});

</script>


</body>
</html>