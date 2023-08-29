<%-- 
    Document   : DataOwner
    Created on : Apr 9, 2019, 11:02:07 AM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Scalable and Adaptive Data Replica Placement for Geo-Distributed Cloud Storages</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
        <link rel="stylesheet" href="table.css" />
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
    <ul class="right" style="width:1000px">
       <ul>
                <li><a href="User_Home.jsp">Home</a></li>
                <li><a href="VAF_File.jsp">View All Files</a></li>
                <li><a href="Request_Status.jsp">Request Status</a></li>
                <li><a href="VAR_File.jsp">View Read Files</a></li>
                <li><a href="VAW_File.jsp">View Write Files</a></li>
                <li><a href="DataUser.jsp">Logout</a></li>
            </ul> 
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
     <%String email=(String)session.getAttribute("email");%>
    <marquee> <%=email%></marquee>
    <center><h3>ALL READ FILES  </h3>
      <table>
          <tr><th>EMAIL</th><th>FILE ID</th><th>BLOCK</th><th>READ TIME</th>
       </tr>
      <%try{
      String query="select * from blockupdate1 bu,updateblock2 up where bu.email='"+email+"' and up.email='"+email+"' and up.rtime!='0' and bu.rtime!='0'";    
        ResultSet rr=Queries.getExecuteQuery(query);
        while(rr.next()){
            
         %> 
        <tr>
            <td><%=rr.getString("bu.email")%></td>
            <td><%=rr.getString("bu.fid")%></td>
            <td><%=rr.getString("bu.block")%></td> 
             <td><%=rr.getString("bu.rtime")%></td> 
        </tr>
        <tr>
            <td><%=rr.getString("up.email")%></td>
            <td><%=rr.getString("up.fid")%></td>
            <td><%=rr.getString("up.block")%></td> 
             <td><%=rr.getString("up.rtime")%></td> 
        </tr>
        
       <% }
         }catch(Exception e){
        out.println(e);  
      }
               %>
    </table>
        </center>
 </div></div>
 </div>   
  <center>
     
    </center>
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
