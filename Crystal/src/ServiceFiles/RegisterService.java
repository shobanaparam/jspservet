package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;
import connection.DbConnection;

import Entities.Register;

public class RegisterService {
	
	public boolean insertRegister(Register reg) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO register1(UserName,Email,Password) VALUES('"+reg.getUsername()+"','"+reg.getEmail()+"','"+reg.getPassword()+"')");

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
