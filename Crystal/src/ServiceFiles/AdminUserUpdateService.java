package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;

import Entities.Reserve;
import connection.DbConnection;

public class AdminUserUpdateService {

	public boolean updateAdminReserve(Reserve res) {

			try {
						Connection con = DbConnection.getDBConnection();  	
						Statement st = con.createStatement();

							String query = "UPDATE reserve1 SET Address='"+res.getAddress()+"',Room='"+res.getRoom()+"',Beds='"+res.getBeds()+"',ADate='"+res.getArrivalDate()+"',DDate='"+res.getDepartureDate()+"' WHERE UserName='"+res.getUsername()+"'";
							st.executeUpdate(query);

								return true;

		
				} 

						catch(Exception e){
							System.out.println(e);
						} 

							return false;
	}

}
