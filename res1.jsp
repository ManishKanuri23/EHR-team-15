<%@page import="Efficient.mail"%>
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
           
         String skey="";
          String bckey1="";
           String bckey2="";
		try
		{
         co = databasecon.getconnection();
         PreparedStatement pst1=co.prepareStatement("SELECT *  FROM upload  where email = '"+email+"' and filename = '"+filename+"'   ");
        ResultSet rs1=pst1.executeQuery();
          while(rs1.next()){
              skey= rs1.getString(4);
              bckey1= rs1.getString(10);
              bckey2= rs1.getString(11);
          }  
         
          
           mail m = new mail();
   String msg ="File Keys:  "+skey+"  and bckey1  :"+bckey1+" and  bckey2  :"+bckey2;
   m.secretMail(msg,uemail,uemail);
   
   
         
                    
        PreparedStatement pst2=co.prepareStatement("update request set status1='keysent' where filename='"+filename+"' and email='"+email+"' and uemail='"+uemail+"' ");
       
	int i= pst2.executeUpdate();
      
     
       response.sendRedirect("req.jsp?m1=registration_success"); 
     
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

