<%-- 
    Document   : uSERnaction
    Created on : Mar 12, 2019, 11:56:37 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="com.dbcon.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbcon.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try{
   
                   
    String uname=request.getParameter("uname");
    System.out.println(uname);
            String pwd=request.getParameter("pwd");
            
            Connection con=DBCon.getCon();
             Statement pst=con.createStatement();
               ResultSet r=null;
                PreparedStatement st=null;
                    r=pst.executeQuery("select count(*) from register where uname='"+uname+"' and role='user'");
              
              int count=0;
              while(r.next()){
                count=r.getInt(1);  
              }
              if(count!=0){
         
            
              
            String query="select * from register where uname='"+uname+"'and pwd='"+pwd+"'";
           ResultSet rs=Queries.getExecuteQuery(query);
          if(rs.next()){
           
             
                 String email=rs.getString("email"); 
                 String status=rs.getString("status");
                 session.setAttribute("email",email);
                 
               if(status.equals("waiting")){
                response.sendRedirect("DataUser.jsp?msg=<font color='orange'>Your are not authorized by the admin...!!</font>");   
               }
              response.sendRedirect("User_Home.jsp?msg=Successfully Accessed home page....!!!");
                 
           }else{
              response.sendRedirect("DataUser.jsp?msg=<font color='orange'>Login Failed Check Username/password...!!!</font>");
          }
              }else{
           response.sendRedirect("DataUser.jsp?msg=<font color='orange'>you are not a registered user...!!!</font>");
         
              }
        }catch(Exception e){
            out.println(e);
        }%>