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
      String cname=request.getParameter("companyname");
      String in=request.getParameter("industry"); 
      String t=request.getParameter("type");
      String d=request.getParameter("designation");
      String pin=request.getParameter("pincode");
      String add=request.getParameter("address");
      String ea=request.getParameter("email");
      String g=request.getParameter("gender");
      int lr=Integer.parseInt(request.getParameter("lowerrange"));
      int ur=Integer.parseInt(request.getParameter("upperrange"));
      String dt=request.getParameter("date");
      String ph=request.getParameter("phone");
      
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement(); 
st.executeUpdate("insert into a values('"+fs+"','"+ls+"','"+crp+"','"+conp+"','"+conp+"''"+cname+"','"+in+"','"+t+"','"+d+"','"+pin+"','"+add+"','"+ea+"','"+g+"',"+lr+","+ur+",'"+dt+"','"+ph+"')");
      
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
		}input[type=submit]
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
        <p><font face="Times New Roman" size="5" color="brown">REGISTRATION SUCCESSFUL!</font></p>
        <form action="adminmainframe.html" method="post">
            <input type="submit" value="Continue">
</body>
</html>