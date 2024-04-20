
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection co = null;
    co = databasecon.getconnection();
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery("select * from cloud where username= '"+username+"' and password='"+password+"'");
    
    if(rs.next())
    {
        
         session.setAttribute("username",username);

    response.sendRedirect("chome.jsp?m1=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("cloud.jsp?m2=Login_Faild");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in userl ogact"+e.getMessage());
    }
%>
