<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>div-table框</title>
    <link href="css/div_table.css"  rel="Stylesheet"  type="text/css"   />
 <script language="javascript" >

</script>
</head>
<body id="background" style="background-size:100% 130%; ">
                                              <!-- background-size:100% 100%; 图片按百分比拉伸,高度一般不是百分百 -->
 <div style="width:99%; height:565px;">
    
    <div id="menu" class="divPushLink" >
        <ul style="list-style-type:none;" >
            <li style="float:left; width:5%"><a href="ul_and_ol.jsp" >链接1</a>   </li>
            <li style="float:left; width:5%"><a href="new_ul_li.jsp" >链接2</a>   </li>
            <li style="float:left; width:5%">  &nbsp; </li>
            <li style="float:left; width:5%">  &nbsp; </li>
            <li style="float:left; width:5%"><a href="main_function.jsp" >链接5</a>  </li>
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
    
    <div id="divHeader" class="divHeaderTable">
        <h4>业务类型</h4>
    </div>
    
    <div id="content" class="divTable">
       <div class="divRow">
        <div class="divColumn">
            <div>
                <label id="lblSolutation" > 1row1Column</label>
            </div>
            <div>
                <input type="text" id="txtSolutation" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="lblFname" > 1row2Column</label>
            </div>
            <div>
                <input type="text" id="Text1" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="lblMname" > 1row3Column</label>
            </div>
            <div>
                <input type="text" id="Text2" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="lblLname" >1row4Column</label>
            </div>
            <div>
                <input type="text" id="Text3" />
            </div>
        </div>
      </div>
      
       <div class="divRow">
       <div class="divColumn">
             <div>
                <label id="Label10" > 2row1Column</label>
            </div>
            <div>
                <input type="text" id="Text13" />
            </div>
        </div>
        <div class="divColumn">
             <div>
                <label id="Label9" > 2row2Column</label>
            </div>
            <div>
                <input type="text" id="Text12" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label7" > 2row3Column</label>
            </div>
            <div>
                <input type="password" id="Text10" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label8" > 2row4Column</label>
            </div>
            <div>
                <input type="password" id="Text11" />
            </div>
        </div>
      </div>
      
       <div class="divRow">
        <div class="divColumn" style="width:48%;">
            <div>
                <label id="Label1" > 3row1Column</label>
            </div>
            <div>
                <textarea id="Text4" style="width:80%;" ></textarea>
            </div>
        </div>
        <div class="divColumn" style="width:48%;">
            <div>
                <label id="Label3" > 3row2Column</label>
            </div>
            <div>
                <textarea id="Text6" style="width:80%;"> </textarea>
            </div>
        </div>
      </div>
      
       <div class="divRow">
        <div class="divColumn">
            <div>
                <label id="Label2" > 4row1Column</label>
            </div>
            <div>
                <input type="text" id="Text5" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label4" > 4row2Column</label>
            </div>
            <div>
                <input type="text" id="Text7" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label5" >4row3Column</label>
            </div>
            <div>
                <input type="text" id="Text8" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label6" >4row4Column</label>
            </div>
            <div>
                <input type="text" id="Text9" />
            </div>
        </div>
      </div>
      
      <br />
      <div class="divRow">
         <input type="submit" value="Submit" onclick="javascript:void(0);" />
          or   
        <a  href="javascript:void(0)">Cancel </a> 
      </div>
    </div>
 </div>   
 <div style="text-align:center; background-color:Grey;">
  Contact us to discuss your requirements
 </div>
</body>



</html>