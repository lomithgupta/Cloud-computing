<%-- 
    Document   : DataOwner
    Created on : Apr 9, 2019, 11:02:07 AM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSetMetaData"%>
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
     
<%
String msg=request.getParameter("msg");
if(msg!=null){
   if(msg.equals("success")){
       %>
       <script type="text/javascript">
           window.alert("Updated Successfully");
           </script>
       <%
   }else{
%>
       <script type="text/javascript">
           window.alert("Updating block failed");
           </script>
       <%
}
}
%>
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
    <%String value=request.getParameter("value");
      String fiid=request.getParameter("fid");
if(value!=null&&fiid!=null){
if(value.equalsIgnoreCase("b1")){
String qur="select * from files where fid='"+fiid+"'";
ResultSet ree=Queries.getExecuteQuery(qur);
long start = System.currentTimeMillis();



%> <center><h3>WRITE INTO THE FILE </h3>
<form action="WUpateAction1.jsp" method="post">
<table>
    <tr><th>FILE ID</th><td><input type="text" name="fid" value="<%=fiid%>" readonly=""></td></tr>

<%
while(ree.next()){
%>
<tr><th>Block 1</th><td><textarea cols="35" rows="20" name="bupdate1"><%=ree.getString("block1")%></textarea></td></tr>
<%
}
session.setAttribute("start",start);
%>
<TR><th></th><td><input type="submit" value="submit"></td></TR>
</table>
<a href="Write_into_Files.jsp?fid=<%=fiid%>">Back</a>
      </form>
 </center>
<%
}else{
long start = System.currentTimeMillis();


String qur="select * from files where fid='"+fiid+"'";
ResultSet ree=Queries.getExecuteQuery(qur);
%> <center><h3>WRITE INTO THE FILE </h3>
<form action="WUpateAction2.jsp" method="post">
<table>
    <tr><th>FILE ID</th><td><input type="text" name="fid" value="<%=fiid%>" readonly=""></td></tr>

<%
while(ree.next()){
%>
<tr><th>Block 2</th><td><textarea cols="35" rows="20" name="bupdate2"><%=ree.getString("block2")%></textarea></td></tr>
<%
}
session.setAttribute("start",start);

%>
<TR><th></th><td><input type="submit" value="submit"></td></TR>
</table>
<a href="Write_into_Files.jsp?fid=<%=fiid%>">Back</a>
      </form>
 </center>
<%
}
}else{
               %>
    <center><h3>WRITE PERMISSION STATUS </h3>
      <table>
          <tr><th>FILE ID</th><th>Available Blocks</th>
       </tr>
      <%
          
          
          try{String fid=request.getParameter("fid");
      String query="select * from files where fid='"+fid+"'";    
        ResultSet rr=Queries.getExecuteQuery(query);
        
        while(rr.next()){
            
         %> 
        <tr>
            
            <td><%=rr.getString("fid")%></td>
            <td><a href="Write_into_Files.jsp?fid=<%=rr.getString("fid")%>&value=b1">Block 1</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Write_into_Files.jsp?fid=<%=rr.getString("fid")%>&value=b2">Block 2</a></td>
        </tr>
        
       <% }

         }
catch(Exception e){
        out.println(e);  
      }
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
