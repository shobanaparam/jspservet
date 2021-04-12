package ServiceFiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class AdminUserDeleteService {
	String url="jdbc:mysql://localhost:3306/crystal1";  
	String username="root";  
	String password=""; 
	
	public boolean deleteUser(String UserName) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection(url,username,password);
		
			Statement myStm= myCon.createStatement();
		
			String query = "DELETE FROM reserve1 WHERE UserName='"+UserName+"'";
		
						
			myStm.executeUpdate(query);
				return true;
			
					
		} 
	
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return false;

}
}
