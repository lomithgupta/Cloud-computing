<%-- 
    Document   : WUpateAction1
    Created on : Apr 25, 2019, 1:03:21 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email=(String)session.getAttribute("email");
long totalTime=(long)session.getAttribute("start");


String fid=request.getParameter("fid");
String bupdate1=request.getParameter("bupdate2");

long s = System.currentTimeMillis();


long writetime=s-totalTime;

String wrt=""+writetime;
try{
    String query="insert into updateblock2 values('"+email+"','"+fid+"','"+bupdate1+"','"+wrt+"','0')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        response.sendRedirect("Write_into_Files.jsp?fid="+fid+"&msg=success");
    }else{
     response.sendRedirect("Write_into_Files.jsp?fid="+fid+"&msg=failed");   
    }
    
    
}catch(Exception e){
    out.println(e);
}


%>