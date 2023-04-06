<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String fs=request.getParameter("firstname"); 
      String ls=request.getParameter("lastname");
      String crp=request.getParameter("createpassword");
      String conp=request.getParameter("confirmpassword");
      String ph=request.getParameter("phone");
      String ea=request.getParameter("email");
      String add=request.getParameter("address");
      String g=request.getParameter("gender");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into register values('"+fs+"','"+ls+"','"+crp+"','"+conp+"','"+ph+"','"+ea+"','"+add+"','"+g+"')");
     
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
                input[type=submit]
       {
        background-color: #0041C2;
		width:25%;
        border-style: outset;
		border-color:silver;
        color: #fff;
        padding: 7px 7px;
        text-decoration: inherit;
        margin: 2px 2px;
        cursor: pointer;
		
      }
</style></style>
<body>
    <div align="center">
		<header id="header">
			<div id="logo">
			
				<h1><font face="Times New Roman">Skill and Job Recommendation using FoDRA Algorithm</h1>
			</div></header>
			</div><br><br><br><br>
        <div align="center"><br><br><br><br>
        <p><font face="Times New Roman" size="5" color="Skyblue">REGISTRATION SUCCESSFUL!</font></p>
        <form action="mainframe.html" method="post">
            <input type="submit" value="Continue"></div></form>
</body>
</html>