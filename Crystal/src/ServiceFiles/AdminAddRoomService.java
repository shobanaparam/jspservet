package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;

import Entities.AdminAddRooms;
import connection.DbConnection;

public class AdminAddRoomService {
	
	public boolean insertRooms(AdminAddRooms Room) {
		
		try {
			Connection con=DbConnection.getDBConnection();
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO rooms(RoomType,RoomName,Details,Status) VALUES('"+Room.getRoomtype()+"','"+Room.getRoomname()+"','"+Room.getDetails()+"','"+Room.getStatus()+"')");
			
			if (i>0) {
				return true;
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return false;
	}

}
