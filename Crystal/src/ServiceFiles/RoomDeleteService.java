package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;
import connection.DbConnection;
import java.sql.SQLException;

public class RoomDeleteService {
		public boolean deleteReserve(String username) {
		
				try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();
		
			String query = "DELETE FROM reserve1 WHERE UserName='"+username+"'";
		
			st.executeUpdate(query);
			
			return true;
			
					
		} 
	
		catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
   }


}
