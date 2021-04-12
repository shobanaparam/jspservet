package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;

import Entities.AdminAddRooms;
import connection.DbConnection;

public class AdminUpdateRoomService {
	
	public boolean updateAdminRoom(AdminAddRooms adr) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			
			String query = "UPDATE rooms SET RoomName='"+adr.getRoomname()+"',Details='"+adr.getDetails()+"',Status='"+adr.getStatus()+"'WHERE RoomType='"+adr.getRoomtype()+"'";
			st.executeUpdate(query);
			return true;
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
