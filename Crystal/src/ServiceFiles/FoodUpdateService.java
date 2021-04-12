package ServiceFiles;
import java.sql.Connection;
import java.sql.Statement;
import connection.DbConnection;
import Entities.Order;


public class FoodUpdateService {
		public boolean updateOrder(Order odr) {
		
				try {
						Connection con = DbConnection.getDBConnection();  	
							Statement st = con.createStatement();
		
						String query = "UPDATE order1 SET FoodType='"+odr.getFoodtype()+"',Qty='"+odr.getQty()+"' WHERE UserName='"+odr.getUsername()+"'";
						st.executeUpdate(query);
			
						return true;
			
					
					} 
	
				catch(Exception e){
					System.out.println(e);
				} 

				return false;
			}
}