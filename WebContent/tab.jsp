<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>jQuery滑动选项卡多个tab切换插件演示</title>
    <meta name="keywords" content="jquery特效,tab切换,选项卡切换,滑动选项卡,选项卡插件" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="jQuery滑动选项卡多个tab切换插件演示。" />
    <!--css引入-->
    <link href="css/tabstyle.css" rel="stylesheet" type="text/css">
    <!--js引入-->
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" >
    (function (window, $, undefined) {

        $.fn.createTab = function (opt) {
            var def = {
                activeEvt: 'mouseover',
                activeCls: 'cur'
            }
            $.extend(def, opt);
            this.each(function () {
                var $this = $(this);
                var timer;
                $this.find('ul.title li').mouseover(def.activeEvt,function(){
                    var index = $(this).index(),
                        that = $(this);
                    timer = setTimeout(function(){
                        that.addClass('cur').siblings().removeClass('cur');
                        $this.find('div.list').animate({marginLeft:-1000*index},'slow');
                    },300);
                }).mouseout(function(){
                    clearTimeout( timer );
                })
            });
        }

    })(window, jQuery);
    $(function(){
        $(".jyTable").createTab()
    })
    </script>
</head>
<body>
<div style="width:1000px;margin: 0 auto;">
    <h1 class="titleH1 underNone clearfix">
        <span class="left underNone underLine">交易产品 </span>
    </h1>
    <div class="jyTable">
        <div class="clearfix">
            <ul class="title title1 left">
                <li class='cur'>当代名家</li>
                <li>潜力名家</li>
                <li>新名家</li>
            </ul>
            <ul class="titleexp right" style="padding-top: 8px;">
                <li>当代名家指数：378.9</li>
                <li>新名家指数：411.2</li>
                <li>潜力名家指数：189.2</li>
            </ul>
        </div>
        <div class='zong'>
            <div class="list list1">
                <div class="tabCon">
                    <ul>
                        <li class="tabth clearfix">
                            <span style="width: 13%">名称</span>
                            <span style="width: 12%">代码</span>
                            <span style="width: 10%">规模</span>
                            <span style="width: 16%">价格</span>
                            <span style="width: 16%">发售日期</span>
                            <span style="width: 16%">截止日期</span>
                            <span style="width: 15%">操作</span>
                        </li>
                    </ul>
                    <div id="s1">
                        <ul class="tabUl">
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn hot">热售中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn hot">热售中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tabCon">
                    <ul>
                        <li class="tabth clearfix">
                            <span style="width: 13%">名称</span>
                            <span style="width: 12%">代码</span>
                            <span style="width: 10%">规模</span>
                            <span style="width: 16%">价格</span>
                            <span style="width: 16%">发售日期</span>
                            <span style="width: 16%">截止日期</span>
                            <span style="width: 15%">操作</span>
                        </li>
                    </ul>
                    <div id="s2">
                        <ul class="tabUl">
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn hot">热售中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn hot">热售中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                            <li class="tabtr clearfix">
                                <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                                <span style="width: 12%;color: #AB9C08">61000165</span>
                                <span style="width: 10%;color: #067D14">大</span>
                                <span style="width: 15%">5000000.0</span>
                                <span style="width: 17%">2014-12-12</span>
                                <span style="width: 17%">2014-12-12</span>
                                <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tabCon">
                <ul>
                    <li class="tabth clearfix">
                        <span style="width: 13%">名称</span>
                        <span style="width: 12%">代码</span>
                        <span style="width: 10%">规模</span>
                        <span style="width: 16%">价格</span>
                        <span style="width: 16%">发售日期</span>
                        <span style="width: 16%">截止日期</span>
                        <span style="width: 15%">操作</span>
                    </li>
                </ul>
                <div id="s3">
                    <ul class="tabUl">
                        <li class="tabtr clearfix">
                            <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                            <span style="width: 12%;color: #AB9C08">61000165</span>
                            <span style="width: 10%;color: #067D14">大</span>
                            <span style="width: 15%">5000000.0</span>
                            <span style="width: 17%">2014-12-12</span>
                            <span style="width: 17%">2014-12-12</span>
                            <a style="width: 12%;color: #F7001E"><em class="clickbtn hot">热售中</em></a>
                        </li>
                        <li class="tabtr clearfix">
                            <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                            <span style="width: 12%;color: #AB9C08">61000165</span>
                            <span style="width: 10%;color: #067D14">大</span>
                            <span style="width: 15%">5000000.0</span>
                            <span style="width: 17%">2014-12-12</span>
                            <span style="width: 17%">2014-12-12</span>
                            <a style="width: 12%;color: #F7001E"><em class="clickbtn hot">热售中</em></a>
                        </li>
                        <li class="tabtr clearfix">
                            <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                            <span style="width: 12%;color: #AB9C08">61000165</span>
                            <span style="width: 10%;color: #067D14">大</span>
                            <span style="width: 15%">5000000.0</span>
                            <span style="width: 17%">2014-12-12</span>
                            <span style="width: 17%">2014-12-12</span>
                            <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                        </li>
                        <li class="tabtr clearfix">
                            <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                            <span style="width: 12%;color: #AB9C08">61000165</span>
                            <span style="width: 10%;color: #067D14">大</span>
                            <span style="width: 15%">5000000.0</span>
                            <span style="width: 17%">2014-12-12</span>
                            <span style="width: 17%">2014-12-12</span>
                            <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                        </li>
                        <li class="tabtr clearfix">
                            <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                            <span style="width: 12%;color: #AB9C08">61000165</span>
                            <span style="width: 10%;color: #067D14">大</span>
                            <span style="width: 15%">5000000.0</span>
                            <span style="width: 17%">2014-12-12</span>
                            <span style="width: 17%">2014-12-12</span>
                            <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                        </li>
                        <li class="tabtr clearfix">
                            <span style="width: 13%; color: #F7001E">jQueryTab选项卡</span>
                            <span style="width: 12%;color: #AB9C08">61000165</span>
                            <span style="width: 10%;color: #067D14">大</span>
                            <span style="width: 15%">5000000.0</span>
                            <span style="width: 17%">2014-12-12</span>
                            <span style="width: 17%">2014-12-12</span>
                            <a style="width: 12%;color: #F7001E"><em class="clickbtn pass">交易中</em></a>
                        </li>
                    </ul>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>