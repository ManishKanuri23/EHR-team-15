<%@page import="Efficient.BlockchainDemo"%>
<%@page import="java.util.Random"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            session.setAttribute("email", email);
            session.setAttribute("user", username);
         //   String type=request.getParameter("type");
            String mobile=request.getParameter("mobile");
            String address=request.getParameter("address");
            String dtype=request.getParameter("dtype");
            
//             BlockchainDemo bdemo = new BlockchainDemo();
//         int bk = bdemo.blockchainkey(username);
//         System.out.println("ddddddddddddddddddddddddddddddddddd" + bk);
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into user(username,password,email,mobile,address,dtype) values(?,?,?,?,?,?)");
        pst2.setString(1,username);
	pst2.setString(2,password);
        pst2.setString(3,email); 
        pst2.setString(4,mobile);   
        pst2.setString(5,address); 
        pst2.setString(6,dtype);
       
      
        
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("user.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("ureg.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

