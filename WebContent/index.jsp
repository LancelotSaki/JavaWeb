<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>我的主页</title>
    <link href="css/div_table.css"  rel="Stylesheet"  type="text/css"   />
      
 <script language="javascript" >
window.onload = function(){
	var imagelist = [];   //页面加载时随机生成背景图片
	imagelist[0] = "./image/1.jpg";
	imagelist[1] = "./image/2.jpg";
	imagelist[2] = "./image/3.jpg";
	imagelist[3] = "./image/4.jpg";
	imagelist[4] = "./image/5.png";
	imagelist[5] = "./image/10.jpg";
	var index =parseInt(Math.random()*(imagelist.length-1)); 
	var currentImage=imagelist[index]; 
	document.getElementById("background").style.backgroundImage="url("+currentImage+")"; 
}


	</script>
</head>
<body id="background" style="background-size:100% 130%; ">
                                              <!-- background-size:100% 100%; 图片按百分比拉伸,高度一般不是百分百 -->
 <div style="width:99%; height:1000px;">
    <div class="divHeaderTable">
         
        <div class="divHeaderRow">
           
            
            <div class="divHeaderColumn">
               <div class="divCenterColumn">
                    <a href="main_function.jsp"><img alt="Gmind" width="33%" height="100px" src="image/2.jpg" /></a>
                    div+css表格
               </div>                      
            </div>
            <div class="divHeaderColumn">
             <div class="divCenterColumn">
                    <a href="mult_function.jsp"><img alt="Gmind" width="33%" height="100px"  src="image/3.jpg" /></a>
                                                             多功能整合
                    </div>
             </div>  
             <div class="divHeaderColumn">
              <div class="divCenterColumn">
                   <a  href="huandengpian.jsp"> <img alt="Gmind" width="33%" height="100px"  src="image/4.jpg" /> </a>
                                                                 幻灯片功能
                    </div>
             </div>  
        </div>
    </div>
    
    <div id="menu" class="divPushLink" >
        <ul style="list-style-type:none;" >
            <li style="float:left; width:5%"><a href="ul_and_ol.jsp" >链接1</a>   </li>
            <li style="float:left; width:5%"><a href="new_ul_li.jsp" >链接2</a>   </li>
            <li style="float:left; width:5%">  &nbsp; </li>
            <li style="float:left; width:5%">  &nbsp; </li>
            <li style="float:left; width:5%"><a href="main_function.jsp" >链接5</a>  </li>
            <li style="float:left; width:5%"><a href="div_set_table.jsp;" >链接6</a>  </li>
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
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接17</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接18</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接19</a>   </li>
             <li style="float:left; width:5%"><a href="javascript:void(0);" >链接20</a>   </li>
        </ul>    
        
         <ol style="list-style-type:none;" start="50">
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接1</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接2</a>   </li>
            <li style="float:left; width:5%"> &nbsp;  </li>
            <li style="float:left; width:5%"> &nbsp;  </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接5</a>  </li>
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
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接17</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接18</a>   </li>
            <li style="float:left; width:5%"><a href="javascript:void(0);" >链接19</a>   </li>
             <li style="float:left; width:5%"><a href="javascript:void(0);" >链接20</a>   </li>
        </ol>  
        
    </div>
		<div style="text-align: center;">
		
			
		</div>
	</div>   
 

 
 <div style="text-align:center; background-color:Grey;">
  Contact us to discuss your requirements
 </div>
</body>



</html>