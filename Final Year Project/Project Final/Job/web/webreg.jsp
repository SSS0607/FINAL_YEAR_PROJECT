<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String fs=request.getParameter("webemail"); 
      
      String crp=request.getParameter("webpassword");
      
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into webreg values('"+fs+"','"+crp+"')");
     
       %>
     
      <% }catch(ClassNotFoundException e){out.println(e);
      
      }; %>
 <style>
    #header {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100px; 
			overflow: hidden; /* Disables scrollbars on the navigation frame. To enable scrollbars, change "hidden" to "scroll" */
			background: #BCCE98;
		}
</style></style>
<body>
    <div align="center">
		<header id="header">
			<div id="logo">
			
				<h1><font face="Times New Roman">Skill and Job Recommendation using Fo-Dra Algorithm</h1>
			</div></header>
			</div><br><br><br><br>
        <div align="center"><br><br><br><br>
        <p><font face="Times New Roman" size="5" color="Skyblue">You are successfully logged in as Admin!!</font></p>
        
</body>
</html>