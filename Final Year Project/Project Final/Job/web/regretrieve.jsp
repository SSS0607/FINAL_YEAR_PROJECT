<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fs=request.getParameter("firstname"); 
String c=request.getParameter("lastname");
String l=request.getParameter("phone");
String jt=request.getParameter("email"); 
String a=request.getParameter("address"); 
String g=request.getParameter("gender"); 
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
    <style>
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
		
}table{
  
  width: 100%;
  
}

th, td {
    
  border-style: ridge;
  border-radius: 10px;
  text-align: left;
  padding: 8px;
}

tr:nth-child(odd) {background-color: #ACDDDE;}
    </style>
<body>
    <div align="center">
<h1><font face="Verdana" color="#AF69EE" size="4">HERE ARE THE DETAILS ABOUT THE NUMBER OF USERS REGISTERED ON THIS SITE USING Fo-DRA ALGORITHM </font></h1></div>
<table border="0" align="center">
    
<tr>

<th><font face="Verdana" size="2">FIRST NAME</font></th>
<th><font face="Verdana" size="2">LAST NAME</font></th>
<th><font face="Verdana" size="2">PHONE</font></th>
<th><font face="Verdana" size="2">EMAIL</font></th>
<th><font face="Verdana" size="2">ADDRESS</font></th>
<th><font face="Verdana" size="2">GENDER</font></th>

</font>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from register";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><font face="Verdana" size="2"><%=resultSet.getString("firstname") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("lastname") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("phone") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("email") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("address") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("gender") %></td>


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
<div align='center'>
<form action="userprofile.html" method="get">
    <input type="submit" value="Go Back">
</form></div>
</body>
</html>