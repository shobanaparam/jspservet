package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;


import Entities.Reserve;
import connection.DbConnection;

public class ReserveService {
		public boolean insertReserve(Reserve res) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO reserve1(UserName,Address,Room,Beds,ADate,DDate) VALUES('"+res.getUsername()+"','"+res.getAddress()+"','"+res.getRoom()+"','"+res.getBeds()+"','"+res.getArrivalDate()+"','"+res.getDepartureDate()+"')");


			if(i>0) {
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 

		return false;
	}

}
