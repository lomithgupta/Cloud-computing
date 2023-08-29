<%-- 
    Document   : Write_Request
    Created on : Apr 25, 2019, 10:33:34 AM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="com.dbcon.DBCon"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String owner=(String)session.getAttribute("email");
String email=request.getParameter("email");
String fid=request.getParameter("fid");
try{
    String qr1="select * from request where readerpermission='accepted' and fid='"+fid+"' and email='"+email+"' and owner='"+owner+"'";
ResultSet r1=Queries.getExecuteQuery(qr1);
if(r1.next()){
    %>
      <script type="text/javascript">
      window.alert("You have already Read permission. so, you can not access Write permission for same file"); 
      window.location="View_File_Req.jsp";
          </script>
    <% 
}else{
   String qr="select * from request where writepermission='leased' and fid='"+fid+"' and owner='"+owner+"'";
   ResultSet r=Queries.getExecuteQuery(qr);
   if(r.next()){
       %>
      <script type="text/javascript">
      window.alert("This file alread Leased for other user"); 
      window.location="View_File_Req.jsp";
          </script>
    <% 
   }else{
   
   
    String query="update request set writepermission='leased' where fid='"+fid+"' and owner='"+owner+"' and email='"+email+"' and writepermission='write permission waiting'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type="text/javascript">
      window.alert("File Leased successfully"); 
      window.location="View_File_Req.jsp";
          </script>
    <%}else{
%>
      <script type="text/javascript">
      window.alert("Failed to lease the file"); 
      window.location="View_File_Req.jsp";
          </script>
    <%
}
}
}
}catch(Exception e){
    out.println(e);
}
%>