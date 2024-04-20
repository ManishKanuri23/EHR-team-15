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
            String keyword=request.getParameter("keyword");
            String cipher=request.getParameter("cipher");
            String uemail=request.getParameter("uemail");
            String dtype=request.getParameter("dtype");
           
         String dtype1="";
		try
		{
         co = databasecon.getconnection();
         PreparedStatement pst=co.prepareStatement("SELECT *  FROM upload  where filename='"+filename+"' and email='"+email+"'  ");
        ResultSet rs=pst.executeQuery();
         
          while(rs.next()){
               dtype1 = rs.getString(9);
          }
         
         
         
         if(dtype.equals(dtype1)){
         
         
                    
        PreparedStatement pst2=co.prepareStatement("update request set status='verified' where filename='"+filename+"' and email='"+email+"' and uemail='"+uemail+"' ");
       
	int i= pst2.executeUpdate();
      
     
       response.sendRedirect("req1.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("req.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

