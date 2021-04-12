package ServiceFiles;


import java.sql.Connection;
import java.sql.Statement;

import Entities.AdminAddFoods;
import connection.DbConnection;

public class AdminAddFoodService {
	
	public boolean insertFood(AdminAddFoods Food) {
		
		try {
			Connection con=DbConnection.getDBConnection();
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO food(FoodType,FoodName,Details) VALUES('"+Food.getFoodtype()+"','"+Food.getFoodname()+"','"+Food.getDetails()+"')");
			
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
