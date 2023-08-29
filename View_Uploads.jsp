<%-- 
    Document   : DataOwner
    Created on : Apr 9, 2019, 11:02:07 AM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page import="java.util.Random"%>
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
       <link rel="stylesheet" href="table.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>
    
    <div class="row">
    <div class="large-4 medium-4 small-12 columns">
        <div id="logo">Scalable and Adaptive Data Replica Placement for Geo-Distributed Cloud Storages</div>
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
    <ul class="right">
       <ul>
                <li><a href="Owner_Home.jsp">Home</a></li>
                <li><a href="Upload.jsp">Upload</a></li>
                <li><a href="View_Uploads.jsp">View Uploads</a></li>
                <li><a href="View_File_Req.jsp">View Request</a></li>
                <li><a href="DataOwner.jsp">Logout</a></li>
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
    
 <%String email=(String)session.getAttribute("email");
 Random r=new Random();
 int i=r.nextInt(10000-400)+400;
 String ii="FID_"+i;
 %>
     <marquee> <%=email%> </marquee>
    <h2>VIEW UPLOADED FILE</h2>
    <center>
        <form action="DivideBlock" method="post" enctype="multipart/form-data">
    <table>
        <tr><th>FILE ID</th><th>FILE NAME</th><th>FILE SIZE</th><th>BLOCK1</th>
        <th>BLOCK2</th></tr>
      <%try{
      String query="select * from files where owner='"+email+"'";    
        ResultSet rr=Queries.getExecuteQuery(query);
        while(rr.next()){
         %> 
        <tr>
            <td><%=rr.getString("fid")%></td>
            <td><%=rr.getString("fname")%></td>
             <td><%=rr.getString("size")%></td>
             <td><textarea cols="30" rows="15"><%=rr.getString("block1")%></textarea></td>
             <td><textarea cols="30" rows="15"><%=rr.getString("block2")%></textarea></td>
        </tr>
        
       <% }
         }catch(Exception e){
        out.println(e);  
      }
               %>
    </table>
        </form>
    </center>
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
