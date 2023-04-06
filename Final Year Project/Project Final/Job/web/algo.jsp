<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String jt=request.getParameter("jobtitle"); 
String c=request.getParameter("course");
String l=request.getParameter("location");
String s=request.getParameter("salary");
String sa=request.getParameter("jobdes");
String q=request.getParameter("comname");
String df=request.getParameter("skills");
String sk=request.getParameter("exp");
String i=request.getParameter("inter");
String w=request.getParameter("work");




String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "skill";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    
    <style type="text/css">
        input[type=submit] {
        background-color: #0041C2;
		width:10%;
        border-style: outset;
		border-color:silver;
        color: #fff;
        padding: 7px 7px;
        text-decoration: inherit;
        margin: 2px 2px;
        cursor: pointer;
		
        }button {
             background-color: #0041C2;
		
        border-style: outset;
		border-color:silver;
        color: #fff;
       
        text-decoration: inherit;
       
        cursor: pointer;
width: 100px;
height: 30px;
}
      

    </style>
    
<body>
    <div align="center">
<h1><font face="Times New Roman">Results of the catogory searched by the user</font></h1></div>
<table border="0" align="center"style="width:70%">
   
<tr>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql ="select * from job where jobtitle='"+jt+"' and course='"+c+"' and location='"+l+"' and salary='"+s+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Job Title:</h4><%=resultSet.getString("jobtitle") %></td></tr>
<tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Course:</h4><%=resultSet.getString("course") %></td></tr>
<tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Location:</h4><%=resultSet.getString("location") %></td></tr>
<tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Salary:</h4><%=resultSet.getString("salary") %></td></tr>
<tr>
    <tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Job Description:</h4><%=resultSet.getString("jobdes") %></td></tr>
    <tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Company Name:</h4><%=resultSet.getString("comname") %></td></tr>
    <tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Skills Required:</h4><%=resultSet.getString("skills") %></td></tr>
    <tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Experience:</h4><%=resultSet.getString("exp") %></td></tr>
    <tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Interview Rounds:</h4><%=resultSet.getString("inter") %></td></tr>
    <tr>
<td align="left"><font face="Times New Roman" size="3"><h4>Work Type:</h4><%=resultSet.getString("work") %></td></tr>
<td><font face="Times New Roman"><div align="center">
<form action="resume1.html" method="get">
        <input type="submit" value="Apply now" onclick="resume1.html">
</form></div></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
<br>
<div align="center">
<form action="searchjob.html" method="get">
    <button type="submit" value="Go Back">Go Back</button>
</form></div>
</body>
</html>