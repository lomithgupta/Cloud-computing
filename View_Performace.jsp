<%-- 
    Document   : DataOwner
    Created on : Apr 9, 2019, 11:02:07 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Scalable</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>
    
    <div class="row">
    <div class="large-4 medium-4 small-12 columns">
        <div id="logo">Scalable and Adaptive</div>
    </div>
    <div class="large-8 medium-8 small-12 columns">
    <nav class="top-bar" data-topbar role="navigation">
  <ul class="title-area">
    <li class="name"> </li>
     <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
    <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
  </ul>

  <section class="top-bar-section">
    <!-- Right Nav Section -->
    <ul class="right" style="width:900px;">
     <li><a href="Admin_Home.jsp">Home</a></li>
									<li><a href="Auth_Owner.jsp">Authorize Owner</a></li>
									<li><a href="Auth_User.jsp">Authorize User</a></li>
                                                                        <li><a href="View_Performace.jsp">View Performance</a></li>
									<li><a href="Admin.jsp">Logout</a></li> 
      </ul>
     

  </section>
</nav>
    </div>
    </div>
    
    
    <div class="slider-sec">

<div class="slider single-item">
  <div><img src="images/slide1.jpg" alt=" " /></div>
  <div><img src="images/slide2.jpg" alt=" " /></div>
</div>
<div class="row">
<div class="large-12 columns no-pad">
<div class="banner-txt"><h1>Scalable and Adaptive Data Replica Placement for Geo-Distributed Cloud Storages</h1>

</div></div>
</div>
    <script type="text/javascript">
$('.single-item').slick();
</script>            
</div>
    
 <div class="content-sec">
 <div class="row">
 <div class="large-12 columns text-center">
   <%String value=request.getParameter("value");
     if(value!=null){
     if(value.equals("write")) {
        %>
        <center>
            <h3><a href="BWPerform1.jsp">Block1 Write Performance</a></h3>
        
         <h3><a href="BWPerform2.jsp">Block2 Write Performance</a></h3>
        
        </center>
        <%
     }else{
%>
<center>
             <h3><a href="BRPerform1.jsp">Block1 Read Performance</a></h3>
        
         <h3><a href="BRPerform2.jsp">Block2 Read Performance</a></h3>
        
</center>
        <%
}   
}else{%>
     
     
     
 <h2>VIEW PERFORMANCE IN GRAPH</h2>
 <P><a href="View_Performace.jsp?value=write">WRITE PERFORMANCE</a></P>
 <P><a href="View_Performace.jsp?value=right">READ PERFORMANCE</a></P>
 <%}%>
 </div></div>
 </div>   
 
 
 
 <div class="copy">
 <div class="row">
 <div class="large-12 columns">
Scalable and Adaptive Data Replica Placement for Geo-Distributed Cloud Storages
 </div>
 </div>
 </div>
 
 
    
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
    <script type="text/javascript" src="js/all.js"></script>
    <script type="text/javascript" src="slick/slick.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    
    
  </body>
</html>
