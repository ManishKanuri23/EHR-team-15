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
            String hc=request.getParameter("hc");
            String uemail=session.getAttribute("email").toString();
            String dtype=session.getAttribute("dtype").toString();
            
         
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into request(filename,email,keyword,cipher,uemail,dtype,status,status1) values(?,?,?,?,?,?,?,?)");
        pst2.setString(1,filename);
	pst2.setString(2,email);
        pst2.setString(3,keyword); 
        pst2.setString(4,cipher);   
        pst2.setString(5,uemail);
        pst2.setString(6,dtype);
        pst2.setString(7,"pending");   
        pst2.setString(8,"pending"); 
      
        
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("uvf.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("uvf.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

