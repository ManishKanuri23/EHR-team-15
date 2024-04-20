<%@page import="Efficient.BlockchainDemo"%>
<%@page import="java.util.Random"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String filename=request.getParameter("filename");
            String email=request.getParameter("email");
            String bckey1=request.getParameter("bckey1");
            String bckey2=request.getParameter("bckey2");
           
         String bckey3="";
         String bckey4="";
		try
		{
         co = databasecon.getconnection();
         PreparedStatement pst=co.prepareStatement("SELECT *  FROM upload  where filename='"+filename+"' and email='"+email+"'  ");
        ResultSet rs=pst.executeQuery();
         
          while(rs.next()){
               bckey3 = rs.getString(10);
               bckey4 = rs.getString(11);
          }
         
         
         
         if(bckey1.equals(bckey3) && bckey2.equals(bckey4)){
         
        
       response.sendRedirect("d1.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("vd.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

