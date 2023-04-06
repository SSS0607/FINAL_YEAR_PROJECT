<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String s8=request.getParameter("ClassX_Instituition"); 
      String s9=request.getParameter("ClassX_Board");
      String s10=request.getParameter("ClassX_Percentage");
      String s11=request.getParameter("ClassX_YrOfPassing");
      String s12=request.getParameter("ClassXII_Instituition");
      String s13=request.getParameter("ClassXII_Board");
      String s14=request.getParameter("ClassXII_Percentage");
      String s15=request.getParameter("ClassXII_YrOfPassing");
      String s16=request.getParameter("Graduation_Instituition");
       String s1=request.getParameter("Graduation_Board");
        String s2=request.getParameter("Graduation_Percentage");
         String s3=request.getParameter("Graduation_YrOfPassing");
         String s4=request.getParameter("Masters_Instituition");
          String s5=request.getParameter("Masters_Board");
           String s6=request.getParameter("Masters_Percentage");
            String s7=request.getParameter("Masters_YrOfPassing");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into resume2 values('"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+s16+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
      
       %>
       <form action="resume3.jsp" method="post">
    <input type="hidden" name="ClassX_Instituition" value="<%=s8%>">
    <input type="hidden" name="ClassX_Board" value="<%=s9%>">
    <input type="hidden" name="ClassX_Percentage" value="<%=s10%>">
    <input type="hidden" name="ClassX_YrOfPassing" value="<%=s11%>">
     <input type="hidden" name="ClassXII_Instituition" value="<%=s12%>">
    <input type="hidden" name="ClassXII_Board" value="<%=s13%>">
    <input type="hidden" name="ClassXII_Percentage" value="<%=s14%>">
    <input type="hidden" name="ClassXII_YrOfPassing" value="<%=s15%>">
    <input type="hidden" name="Graduation_Instituition" value="<%=s16%>">
     <input type="hidden" name="Graduation_Board" value="<%=s1%>">
      <input type="hidden" name="Graduation_Percentage" value="<%=s2%>">
       <input type="hidden" name="Graduation_YrOfPassing" value="<%=s3%>">
        <input type="hidden" name="Masters_Instituition" value="<%=s4%>">
         <input type="hidden" name="Masters_Board" value="<%=s5%>">
          <input type="hidden" name="Masters_Percentage" value="<%=s6%>">
           <input type="hidden" name="Masters_YrOfPassing" value="<%=s7%>">
           
           <style>
 h3{
  font-family: Calibri; 
  font-size: 25pt;         
  font-style: normal; 
  font-weight: bold; 
  color:Slateblue;
  text-align: center; 
 
}

table{
  font-family: Calibri; 
  color:white; 
  font-size: 11pt; 
  font-style: normal;
  font-weight: bold;
  text-align:; 
  background-color: SlateBlue; 
  border-collapse: collapse; 
  border: 2px solid navy
}
table.inner{
  border: 0px
}
 </style>
 <h3>TECHNICAL DETAILS</h3>
<body>
<form action="resume3.jsp" method="post">
 <div align="center">
<table align="center" cellpadding = "10">
 
<!----- First Name ---------------------------------------------------------->
<tr>
<td>TECHNICAL SKILLS</td>
<td><textarea name="Address" rows="4" cols="30" placeholder="Enter your technical skills here..." /required></textarea></td>

</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>EXPERIENCE</td>
<td>
1 <input type="radio" name="exp" value="1" />
2<input type="radio" name="exp" value="2" />
3 or more<input type="radio" name="exp" value="3" />
</td>
</tr>
 

<tr>
<td>PROJECTS DONE</td>
<td><textarea name="project" rows="4" cols="30" placeholder="Enter your project details here..." /required></textarea></td>

</td>
</tr>
 

<!----- Hobbies ---------------------------------------------------------->
 
<tr>
<td>LANGUAGES KNOWN <br /><br /><br /></td>
 
<td>
Tamil
<input type="checkbox" name="language1" value="Tamil" />
English
<input type="checkbox" name="language2" value="English" />
Hindi
<input type="checkbox" name="language3" value="Hindi" />


<tr>
<td>HOBBIES </td>
 
<td>
<input type="text" name="OtherHobby" maxlength="100" placeholder="Enter your hobbies here..." /required>
</td>
</tr>

 

 
<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
 
</form>
 
</body>
</html>
     
      <% }catch(ClassNotFoundException e){out.println(e);
      
      }; %>
 
</body>
</html>