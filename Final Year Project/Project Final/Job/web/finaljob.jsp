<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String fs=request.getParameter("jobtitle"); 
      String ls=request.getParameter("course");
      String crp=request.getParameter("location");
      String conp=request.getParameter("salary");
      String ph=request.getParameter("jobdes");
      String ea=request.getParameter("comname");
      String add=request.getParameter("skills");
      String expr=request.getParameter("exp");
      String g=request.getParameter("inter");
      String gen=request.getParameter("work");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into job values('"+fs+"','"+ls+"','"+crp+"','"+conp+"','"+ph+"','"+ea+"','"+add+"','"+expr+"','"+g+"','"+gen+"')");
  out.println("Data Inserted Succesfully");   
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
