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
<%
String email=(String)session.getAttribute("email");
String fid=request.getParameter("fid");
String owner=request.getParameter("owner");
try{
    Connection con=DBCon.getCon();
    Statement st=con.createStatement();
    ResultSet r=st.executeQuery("select count(*) from request where fid='"+fid+"' and writepermission='leased'");
    int count=0;
    while(r.next()){
      count=r.getInt(1);  
    }
    if(count==0){
        Statement st1=con.createStatement();
    ResultSet r1=st1.executeQuery("select count(*) from request where fid='"+fid+"'and email='"+email+"' and writepermission='write permission waiting'");
    int count1=0;
    while(r1.next()){
      count1=r1.getInt(1);  
    }
    if(count1==0){
        
    
    String query="insert into request values('"+email+"','"+owner+"','"+fid+"','write permission waiting','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type="text/javascript">
      window.alert("Request for Write permission sent successfully"); 
      window.location="VAF_File.jsp";
          </script>
    <%}else{
%>
      <script type="text/javascript">
      window.alert("Request for Write permission sendding failed"); 
      window.location="VAF_File.jsp";
          </script>
    <%
}
}else{
%>
      <script type="text/javascript">
      window.alert("Already Sent request for this file"); 
      window.location="VAF_File.jsp";
          </script>
    <%
}
}else{
%>
      <script type="text/javascript">
      window.alert("This file already leased for anothe user"); 
      window.location="VAF_File.jsp";
          </script>
    <%
}
}catch(Exception e){
    out.println(e);
}
%>