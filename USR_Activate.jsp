<%-- 
    Document   : OWN_Activate
    Created on : Apr 9, 2019, 2:43:05 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
try{
    String query="update register set status='Activated' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Activated successfully");
            window.location="Auth_User.jsp";
            </script>
   <% }else{
%>
        <script type="text/javascript">
            window.alert("Activation Failed");
            window.location="Auth_User.jsp";
            </script>
   <% 
}
}catch(Exception e){
  out.println(e);  
}


%>