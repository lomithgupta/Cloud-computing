<%-- 
    Document   : UploadFile
    Created on : Apr 24, 2019, 3:51:58 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email=(String)session.getAttribute("email");
String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String size=request.getParameter("size");
String data1=request.getParameter("data1");
String data2=request.getParameter("data2");
try{
    String query="insert into files values(null,'"+email+"','"+fid+"','"+fname+"','"+size+"','"+data1+"','"+data2+"','waiting','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
     %>
     <script type="text/javascript">
         window.alert("File Uploaded Successfully...!!!");
         window.location="Upload.jsp";
     </script>
     <%
    }else{
%>
     <script type="text/javascript">
         window.alert("File Uploading Failed...!!!");
         window.location="Upload.jsp";
     </script>
     <%
}
    
    
}catch(Exception e){
   out.println(e); 
}
%>