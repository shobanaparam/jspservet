package ServiceFiles;

import java.sql.Connection;
import java.sql.Statement;

import Entities.Order;
import connection.DbConnection;

public class OrderService {
		public boolean insertOrder(Order odr) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO order1(UserName,FoodType,Qty) VALUES('"+odr.getUsername()+"','"+odr.getFoodtype()+"','"+odr.getQty()+"')");


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
