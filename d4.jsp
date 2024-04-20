<%

 String filename = request.getParameter("filename"); 
// String oemail = request.getParameter("oemail"); 
 String fname = filename.concat(".txt"); 
 String cloud1content = request.getParameter("content");
// String cloud2content = request.getParameter("content2");

 String content = cloud1content;
 
 response.setHeader("Content-Disposition", "attachment;filename=\"" + fname + "\"");
 out.write(content); 

%>
