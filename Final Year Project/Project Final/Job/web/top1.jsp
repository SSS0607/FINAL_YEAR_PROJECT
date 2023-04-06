<html>
<head><title>Top Jobs</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String fs=request.getParameter("First_Name"); 
      String ls=request.getParameter("Last_Name");
      String crp=request.getParameter("Birthday_day");
      String conp=request.getParameter("Birthday_Month");
      String ph=request.getParameter("Birthday_Year");
      String ea=request.getParameter("Email_Id");
      String add=request.getParameter("Mobile_Number");
      String g=request.getParameter("Address");
      String gen=request.getParameter("Gender");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into topres1 values('"+fs+"','"+ls+"','"+crp+"','"+conp+"','"+ph+"','"+ea+"','"+add+"','"+g+"','"+gen+"')");
 %>
      <form action="top2.jsp" method="post">
    <input type="hidden" name="First_Name" value="<%=fs%>">
    <input type="hidden" name="Last_Name" value="<%=ls%>">
    <input type="hidden" name="Birthday_day" value="<%=crp%>">
    <input type="hidden" name="Birthday_Month" value="<%=conp%>">
    <input type="hidden" name="Birthday_Year" value="<%=ph%>">
    <input type="hidden" name="Email_Id" value="<%=ea%>">
    <input type="hidden" name="Mobile_Number" value="<%=add%>">
    <input type="hidden" name="Address" value="<%=g%>">
    <input type="hidden" name="Gender" value="<%=gen%>">
    <style>
 h3{
  font-family: Calibri; 
  font-size: 20pt;         
  font-style: normal; 
  font-weight: bold; 
  color:SlateBlue;
  text-align: center; 
  text-decoration: italic
}

table{
  font-family: Calibri; 
  color:white; 
  font-size: 11pt; 
  font-style: normal;
  font-weight: bold;
  
  background-color: #FFE5B4; 
  border-collapse: collapse; 
  border: 2px solid navy
}
table.inner{
  border: 0px
}</style>
    <body><h3>ACADEMIC QUALIFICATION</h3>
<table align="center" cellpadding = "10">
<tr>
<td align="center"><b>Sl.No.</b></td>
<td align="center"><b>Course</b></td>
<td align="center"><b>Instituition</b></td>
<td align="center"><b>Board</b></td>
<td align="center"><b>Percentage</b></td>
<td align="center"><b>Year of Passing</b></td>
</tr>
 
<tr>
<td>1</td>
<td>Class X</td>
<td><input type="text" name="ClassX_Instituition" maxlength="50" /required></td>
<td><input type="text" name="ClassX_Board" maxlength="30" /required></td>
<td><input type="text" name="ClassX_Percentage" maxlength="30" /required></td>
<td><input type="text" name="ClassX_YrOfPassing" maxlength="30" /required></td>
</tr>
 
<tr>
<td>2</td>
<td>Class XII</td>
<td><input type="text" name="ClassXII_Instituition" maxlength="50" /required></td>
<td><input type="text" name="ClassXII_Board" maxlength="30" /required></td>
<td><input type="text" name="ClassXII_Percentage" maxlength="30" /required></td>
<td><input type="text" name="ClassXII_YrOfPassing" maxlength="30" /required></td>
</tr>
 
<tr>
<td>3</td>
<td>Graduation</td>
<td><input type="text" name="Graduation_Instituition" maxlength="50" /required></td>
<td><input type="text" name="Graduation_Board" maxlength="30" /required></td>
<td><input type="text" name="Graduation_Percentage" maxlength="30" /required></td>
<td><input type="text" name="Graduation_YrOfPassing" maxlength="30" /required></td>
</tr>
 
<tr>
<td>4</td>
<td>Masters</td>
<td><input type="text" name="Masters_Instituition" maxlength="50" /></td>
<td><input type="text" name="Masters_Board" maxlength="30" /></td>
<td><input type="text" name="Masters_Percentage" maxlength="30" /></td>
<td><input type="text" name="Masters_YrOfPassing" maxlength="30" /></td>
</tr>
 <tr>
<td colspan="2" align="center">
<input type="submit" value="Next">

</td>
</tr></table>
</form>
</body>
      
     
      <% }catch(ClassNotFoundException e){out.println(e);
      
      }; %>
 
</body>
</html>