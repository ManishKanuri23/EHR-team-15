
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    try{
       
    Connection co = null;
    co = databasecon.getconnection();
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery("select * from user where email= '"+email+"' and password='"+password+"'");
    
    if(rs.next())
    {
         String uemail = rs.getString("email");
          String dtype = rs.getString("dtype");
         session.setAttribute("email",uemail);
         session.setAttribute("dtype",dtype);

    response.sendRedirect("uhome.jsp?m1=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("user.jsp?m2=Login_Faild");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in userl ogact"+e.getMessage());
    }
%>
