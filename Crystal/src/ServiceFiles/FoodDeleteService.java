package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;
import connection.DbConnection;
import java.sql.SQLException;

public class FoodDeleteService {
		public boolean deleteOrder(String username) {
		
				try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();
		
			String query = "DELETE FROM order1 WHERE UserName='"+username+"'";
		
			st.executeUpdate(query);
			
			return true;
			
					
		} 
	
		catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
   }


}
