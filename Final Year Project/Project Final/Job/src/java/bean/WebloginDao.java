package bean;
import java.sql.*;
public class WebloginDao {

	public static boolean validate(Webloginbean bean){
		boolean status=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       
			
			PreparedStatement ps=con.prepareStatement("select * from webreg where webemail=? and webpassword=?");
			ps.setString(1,bean.getEmail());
			ps.setString(2, bean.getPass());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		}catch(Exception e){}
		return status;
	}
}