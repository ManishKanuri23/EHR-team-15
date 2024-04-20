<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Blockchain for EHRs</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Blockchain for EHRs
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/Blockchain for EHRs-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1><a href="index.html">Blockchain for EHRs</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="uhome.jsp">Home</a></li>
          <li><a class="nav-link scrollto active" href="uvf.jsp">View Files</a></li>
           <li><a class="nav-link scrollto" href="vd.jsp">Verify and Download</a></li>
          <li><a class="nav-link scrollto " href="index.html">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  <%
      // String email=session.getAttribute("email").toString();
       
       try{ 
	
        Connection co = databasecon.getconnection();
        PreparedStatement pst=co.prepareStatement("SELECT *  FROM upload   ");
        ResultSet rs=pst.executeQuery();
       
       
      %>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
     <center><br>
                           
                                <h6 style="color:white">View Files</h6><br>
                                
<table class="table table-striped" style="width:80%;margin-bottom: 60%">
  <thead>
    <tr>
      <th scope="col">Filename</th>
      <th scope="col">Email</th>
      <th scope="col">cipher</th>
      <th scope="col">Keyword</th>
      <th scope="col">Hashcode</th>
       <th scope="col">Request</th>
    </tr>
  </thead>
   <%
        while(rs.next()){
        %>
  <tbody>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
         <td><%=rs.getString(7)%></td>
          <td><a href="uvf1.jsp?filename=<%=rs.getString(1)%>&email=<%=rs.getString(2)%>&keyword=<%=rs.getString(6)%>&hc=<%=rs.getString(7)%>&cipher=<%=rs.getString(5)%>">Request</a> </td>
         
      </tr>
  </tbody>
   <%
        }
        %>
</table>
      <% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>                         
           
                              
                            </center>
    </div>
  </section><!-- End Hero -->

  <main id="main">

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>