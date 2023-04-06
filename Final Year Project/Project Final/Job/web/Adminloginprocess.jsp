<html>
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
                input[type=submit] {
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
</style>
    <body>
        
    
<%@page import="bean.AdminLoginDao"%>
<jsp:useBean id="obj" class="bean.AdminLoginbean"/>

<jsp:setProperty property="*" name="obj"/>

<%
boolean status=AdminLoginDao.validate(obj);
if(status){
    out.println("<div align='center'>");
    out.println("<header id='header'>");
    out.println("<div id='logo'>");
    out.println("<h1><font face='Times New Roman'>Skill and Job Recommendation using Fo-Dra Algorithm</h1>");
    out.println("</div></header>");
    out.println("</div><br><br>");
    
out.println("<div align='center'><br><br><br><br>");
out.println("<p><font color='red'>You r successfully logged in as Recruiter!!!</p>");
out.println("<form action='adminmainframe.html'>");
out.println("<input type='submit' value='Continue'>");
out.println("</form>");
out.close();
session.setAttribute("session","TRUE");
}
else
{

out.println("<div align='center'><br><br><br><br>");
out.println("<p>Sorry, email or password error</p>");
out.println("</div>");
%>
<jsp:include page="Adminindex.jsp"></jsp:include>
<%
}
%>
    </body>
</html>

    