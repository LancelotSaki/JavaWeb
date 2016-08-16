<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>我的主页</title>
    <link href="css/div_table.css"  rel="Stylesheet"  type="text/css"   />
      <!-- Load player theme -->
    <link rel="stylesheet" href="videoplayer/css/projekktor.style.css" type="text/css" media="screen" />

    <!-- Load jquery -->
    <script type="text/javascript" src="videoplayer/js/jquery-1.9.1.min.js"></script>

    <!-- load projekktor -->
    <script type="text/javascript" src="videoplayer/js/projekktor-1.3.07.min.js"></script>
 <script language="javascript" >
 
window.onload = function(){
	var imagelist = [];   //页面加载时随机生成背景图片
	imagelist[0] = "./image/backgroup.jpg";
	imagelist[1] = "./image/backgroup_a.jpg";
	var index =parseInt(Math.random()*(imagelist.length-1)); 
	var currentImage=imagelist[index]; 
	document.getElementById("background").style.backgroundImage="url("+currentImage+")"; 
}

$(document).ready(function() {
    projekktor('#player_a', {
    poster: 'videoplayer/images/intro.png',
    title: 'this is projekktor',
    playerFlashMP4: 'videoplayer/swf/StrobeMediaPlayback.swf',
    playerFlashMP3: 'videoplayer/swf/StrobeMediaPlayback.swf',
    width: 640,
    height: 385,
    playlist: [
        {
        	 0: {src: "videoplayer/media/intro.mp4", type: "video/mp4"},
             1: {src: "videoplayer/media/intro.webm", type: "video/webm"}
        	/*
        0: {src: "videoplayer/media/intro.ogv", type: "video/ogg"},
        1: {src: "videoplayer/media/intro.mp4", type: "video/mp4"},
        2: {src: "videoplayer/media/intro.webm", type: "video/webm"}
        */
        }
    ]    
    }, function(player) {} // on ready 
    );
});

	</script>
</head>
<body id="background" style="background-size:100% 130%; ">
                                              <!-- background-size:100% 100%; 图片按百分比拉伸,高度一般不是百分百 -->
 <div style="width:99%; height:1000px;">
    <div class="divHeaderTable">
         
        <div class="divHeaderRow">
           
            
            <div class="divHeaderColumn">
               <div class="divCenterColumn">
                    <a href="main_function.jsp"><img alt="Gmind" width="33%" height="100px" src="image/a.jpg" /></a>
                    div+css表格
               </div>                      
            </div>
            <div class="divHeaderColumn">
             <div class="divCenterColumn">
                    <a href="mult_function.jsp"><img alt="Gmind" width="33%" height="100px"  src="image/b.jpg" /></a>
                                                             多功能整合
                    </div>
             </div>  
             <div class="divHeaderColumn">
              <div class="divCenterColumn">
                   <a  href="huandengpian.jsp"> <img alt="Gmind" width="33%" height="100px"  src="image/c.jpg" /> </a>
                                                                 幻灯片功能
                    </div>
             </div>  
        </div>
    </div>
    
    <div id="menu" class="divPushLink" >
        <ul style="list-style-type:none;" >
            <li style="float:left; width:5%"><a href="login.jsp" >链接1</a>   </li>
            <li style="float:left; width:5%"><a href="new_ul_li.jsp" >table框</a>   </li>
            <li style="float:left; width:5%">  &nbsp; </li>
            <li style="float:left; width:5%">  &nbsp; </li>
            <li style="float:left; width:5%"><a href="main_function.jsp" >链接5</a>  </li>
            <li style="float:left; width:5%"><a href="div_set_table.jsp" >链接6</a>  </li>
            <li style="float:left; width:5%"><a href="ul_and_ol.jsp" >ul框</a>  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接8</a>  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接9</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接10</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接11</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接12</a>   </li>
            <li style="float:left; width:5%">&nbsp;   </li>
            <li style="float:left; width:5%">&nbsp;   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接15</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接16</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接17</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接18</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接19</a>   </li>
             <li style="float:left; width:5%"><a href="pages/submit/submitbutton/SubmitButton.jsp" >链接20</a>   </li>
        </ul>    
        
         <ol style="list-style-type:none;" start="50">
            <li style="float:left; width:5%"><a href="textEdit.jsp" >文本框</a>   </li>
            <li style="float:left; width:5%"><a href="pages/functionmenu/togglemenu/togglemenu.jsp" >侧边栏</a>   </li>
            <li style="float:left; width:5%"> &nbsp;  </li>
            <li style="float:left; width:5%"> &nbsp;  </li>
            <li style="float:left; width:5%"><a href="pages/loginui/loginmenu/LoginMenu.jsp" >登录</a>  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接6</a>  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接7</a>  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接8</a>  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接9</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接10</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接11</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接12</a>   </li>
            <li style="float:left; width:5%">&nbsp;   </li>
            <li style="float:left; width:5%">&nbsp;   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接15</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接16</a>   </li>
            <li style="float:left; width:5%"><a href="tab4.jsp" >链接17</a>   </li>
            <li style="float:left; width:5%"><a href="tab3.jsp" >链接18</a>   </li>
            <li style="float:left; width:5%"><a href="tab2.jsp" >链接19</a>   </li>
             <li style="float:left; width:5%"><a href="tab.jsp" >链接20</a>   </li>
        </ol>  
        
    </div>
      <div class="divColumn">
       &nbsp;
      </div>
		<div  class="divCenterColumn">
			<div id="player_a" class="projekktor" >
			</div>
		</div>
	</div>   
 

 
 <div style="text-align:center; background-color:Grey;" >
  Contact us to discuss your requirements
 </div>
</body>



</html>