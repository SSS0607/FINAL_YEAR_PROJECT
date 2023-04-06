<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fs=request.getParameter("firstname"); 
String c=request.getParameter("lastname");
String l=request.getParameter("companyname");
String jt=request.getParameter("industry"); 
String a=request.getParameter("type"); 
String g=request.getParameter("designation"); 
String p=request.getParameter("pincode"); 
String add=request.getParameter("address"); 
String email=request.getParameter("email"); 
String gen=request.getParameter("gender"); 
String lr=request.getParameter("lowerrange"); 
String ur=request.getParameter("upperrange"); 
String d=request.getParameter("date"); 
String ph=request.getParameter("phone"); 

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
<html><style>
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
		
}
    table{
   width: 100%;
 
}

th, td {
    
  border-style: ridge;
  border-radius: 10px;
  text-align: left;
  padding: 8px;
}

tr:nth-child(odd) {background-color: #C0FDFB;}
      </style>
<body>
    <div align="center">
<h1><font face="Verdana" color="#AF69EE" size="4">HERE ARE THE DETAILS ABOUT THE NUMBER OF RECRUITERS REGISTERED ON THIS SITE USING Fo-DRA ALGORITHM </font></h1></div>
<table border="0" align="center">
    
<tr>

<th><font face="Verdana" size="2">FIRST NAME</font></th>
<th><font face="Verdana" size="2">LAST NAME</font></th>
<th><font face="Verdana" size="2">COMPANY NAME</font></th>
<th><font face="Verdana" size="2">INDUSTRY</font></th>
<th><font face="Verdana" size="2">TYPE OF INDUSTRY </font></th>
<th><font face="Verdana" size="2">DESIGNATION</font></th>
<th><font face="Verdana" size="2">PIN CODE</font></th>
<th><font face="Verdana" size="2">ADDRESS</font></th>
<th><font face="Verdana" size="2">EMAIL</font></th>
<th><font face="Verdana" size="2">GENDER</font></th>
<th><font face="Verdana" size="2">EMPLOYEES WORKING(LOWER RANGE)</font></th>
<th><font face="Verdana" size="2">EMPLOYEES WORKING(UPPER RANGE)</font></th>
<th><font face="Verdana" size="2">DATE</font></th>
<th><font face="Verdana" size="2">MOBILE NUMBER</font></th>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from a";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><font face="Verdana" size="2"><%=resultSet.getString("firstname") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("lastname") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("companyname") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("industry") %></td>
<td><font face="Verdana" size="2" ><%=resultSet.getString("type") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("designation") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("pincode") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("address") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("email") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("gender") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("lowerrange") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("upperrange") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("date") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("phone") %></td>




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
<form action="recprofile.html" method="get">
    <input type="submit" value="Go Back">
</form></div>
</body>
</html>