<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>tab</title>

<script src="js/jquery-1.9.1.js">
$(function(){
    function tabs(tabTit,on,tabCon){
	$(tabCon).each(function(){
	  $(this).children().eq(0).show();
	 
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(0).addClass(on);
	  });
     $(tabTit).children().click(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
     }
  tabs(".investment_title","on",".investment_con");
  
 })
 

</script>

<style type="text/css">
.investment_f{ width:960px; margin:20px auto}
.investment_f .investment_title{height:44px;  width:960px; overflow:hidden}
.investment_title div{ width:131px; height:44px; background:url(../images/invest_detail_22.png); float:left; margin-right:6px; display:inline; font-size:14px; font-weight:bold; text-align:center; line-height:46px; color:#555; cursor:pointer; margin-left:1px;}
.investment_title a,.investment_title a:link,.investment_title a:visited,.investment_title a:hover{ color:#555;width:131px; height:44px;display:inline-block}
.investment_title div.on a,.investment_title div.on a:link,.investment_title div.on a:visited,.investment_title div.on a:hover{ color:#f70}
.investment_title div.on{background:url(../images/invest_detail_18.png); color:#f70}
.investment_con{ clear:both; background:#fff; border:1px solid #EDEDED;padding:20px;}
.investment_con_list{display:none;}
</style>

</head>

<body>



<div class="investment_f">

  <div class="investment_title">

    <div class="on">切换内容一</div>

    <div>切换内容二</div>

    <div>切换内容三</div>

  </div>

  <div class="investment_con">

    <div class="investment_con_list">

      <P>这是一个简单的JQ切换效果，使用简单，而且可以重复使用。兼容IE6\IE7\IE8所有,以及firefox,chrome,Safari</P>

    </div>

    <div class="investment_con_list">

      <P>在与清华大学校长陈吉宁就未来人才培养、深化合作交流后，10月22日晚上，正在中国访问的Facebook创始人兼首席执行官马克·扎克伯格（Mark Zuckerberg）又来到清华大学经管学院舜德楼，与学生对话。</P>

      <p>让在场所有学生甚至Facebook工作人员都意想不到的是，扎克伯格在接下来的几个小时全程用中文进行了演讲。据网站财经援引一名工作人员的话称，原本只是希望扎克伯格简单说几句中文，调动一下气氛，没想到他"根本停不下来"。</p>

    </div>

    <div class="investment_con_list" >

     <p>简单易用</p> 

    </div>

  </div>

</div>



</body>

</html>

