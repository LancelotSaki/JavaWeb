<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>我的主页</title>
    <link href="css/div_table.css"  rel="Stylesheet"  type="text/css"   />
</head>
<body style="background-image:url(); background-repeat:repeat;">
 
 <div style="width:99%; height:565px;">
    <div class="divHeaderTable">
         <div class="divHeaderRow">
                <img alt="Offshore Outsourcing software development company India"
                    title="Offshore Outsourcing software development company India"
                    src="image/1.jpg" width="100%" height="100%" />
         </div>
        <div class="divHeaderRow">
           
            
            <div class="divHeaderColumn">
               <div class="divCenterColumn">
                    <img alt="Gmind" width="15%" height="52" src="image/2.jpg" />
                    +91-9702989270
               </div>                      
            </div>
            <div class="divHeaderColumn">
             <div class="divCenterColumn">
                    <img alt="Gmind" width="15%" height="52"  src="image/3.jpg" />
                    +91-9924839208
                    </div>
             </div>  
             <div class="divHeaderColumn">
              <div class="divCenterColumn">
                    <img alt="Gmind" width="15%" height="52"  src="image/4.jpg" />
                    +91-9924839209 
                    </div>
             </div>  
        </div>
    </div>
    
    <div id="menu" class="divHeaderTable" >
        <ul style="list-style-type:none;" >
            <li style="float:left"><a href="javascript:void(0);" >主页</a>   </li>
            <li style="float:left"><a href="javascript:void(0);" >番剧</a>   </li>
            <li style="float:left"><a href="javascript:void(0);" >电视剧</a>   </li>
            <li style="float:left"><a href="javascript:void(0);" >布袋戏</a>  </li>
            <li style="float:left"><a href="javascript:void(0);" >游戏直播</a>  </li>
            <li style="float:left"><a href="javascript:void(0);" >合作伙伴</a>  </li>
            <li><a href="javascript:void(0);" title="Contact Us">联系我们</a>  </li>
        </ul>    
    </div>
    
    <div id="divHeader" class="divHeaderTable">
        <h4>业务类型</h4>
    </div>
    
    <div id="content" class="divTable">
       <div class="divRow">
        <div class="divColumn">
            <div>
                <label id="lblSolutation" > Solutation</label>
            </div>
            <div>
                <input type="text" id="txtSolutation" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="lblFname" > First Name</label>
            </div>
            <div>
                <input type="text" id="Text1" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="lblMname" > Middle Name</label>
            </div>
            <div>
                <input type="text" id="Text2" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="lblLname" > Last Name</label>
            </div>
            <div>
                <input type="text" id="Text3" />
            </div>
        </div>
      </div>
      
       <div class="divRow">
       <div class="divColumn">
             <div>
                <label id="Label10" > Login Name</label>
            </div>
            <div>
                <input type="text" id="Text13" />
            </div>
        </div>
        <div class="divColumn">
             <div>
                <label id="Label9" > E-mail</label>
            </div>
            <div>
                <input type="text" id="Text12" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label7" > Password</label>
            </div>
            <div>
                <input type="password" id="Text10" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label8" > Confirm Password</label>
            </div>
            <div>
                <input type="password" id="Text11" />
            </div>
        </div>
      </div>
      
       <div class="divRow">
        <div class="divColumn" style="width:48%;">
            <div>
                <label id="Label1" > Address1</label>
            </div>
            <div>
                <textarea id="Text4" style="width:80%;" ></textarea>
            </div>
        </div>
        <div class="divColumn" style="width:48%;">
            <div>
                <label id="Label3" > Address2</label>
            </div>
            <div>
                <textarea id="Text6" style="width:80%;"> </textarea>
            </div>
        </div>
      </div>
      
       <div class="divRow">
        <div class="divColumn">
            <div>
                <label id="Label2" > State</label>
            </div>
            <div>
                <input type="text" id="Text5" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label4" > City</label>
            </div>
            <div>
                <input type="text" id="Text7" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label5" > Country</label>
            </div>
            <div>
                <input type="text" id="Text8" />
            </div>
        </div>
        <div class="divColumn">
            <div>
                <label id="Label6" > Pin Code</label>
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