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
         //   String type=request.getParameter("type");
            String hc=request.getParameter("hc");
            
            BlockchainDemo bdemo = new BlockchainDemo();
         int bk = bdemo.blockchainkey(hc);
         System.out.println("ddddddddddddddddddddddddddddddddddd" + bk);
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("update upload set bckey2='"+bk+"' where filename='"+filename+"' and email='"+email+"'");
       
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("pri.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("pri.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

