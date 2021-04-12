<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ page import="java.sql.*" %>

<%

	String url="jdbc:mysql://localhost:3306/crystal1";  
	String username="root";  
	String password=""; 


	try {		
 		Class.forName("com.mysql.jdbc.Driver");
 	} 

	catch (ClassNotFoundException e) {
    	e.printStackTrace();
	}
      
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    <link rel="stylesheet" href="Admin.css" type="text/css">
</head>

<body>
  	
    <div class="container">  
        
 
 		<a href="AdminUser.jsp" style="margin-left:30%; margin-right:4%; margin-top:4%">User</a>
  		<a href="AdminRoom.jsp" style="margin-right:3%; margin-top:4%">Rooms</a>
       	<a href="AdminUserFood.jsp" style="margin-right:3%; margin-top:4%">Foods</a>
       	<a href="AdminAddRooms.jsp" style="margin-right:3%; margin-top:4%">Add Rooms</a>
       	<a href="AdminAddFood.jsp" style="margin-right:3%; margin-top:4%">Add Foods</a>
                
  </div>
      
    </div>
    <div class="btn1">
        <a href="crystal.jsp"><button type="button" value="">Logout</button></a>
    </div>
    
 
    <div>      
        <table>
    

  <tr>
   <th>User Name</th>
   <th>Food Type</th>
   <th>Qty</th>

  </tr>
      
        <%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM order1";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
		%>
		<tr>
		
		<td><%=resultSet.getString("UserName") %></td>
		<td><%=resultSet.getString("FoodType") %></td>
		<td><%=resultSet.getString("Qty") %></td>
	
<% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
 
</table>

                           </div> 


 
	 








<br/><br/><br/>




	
 </body>
 </html>