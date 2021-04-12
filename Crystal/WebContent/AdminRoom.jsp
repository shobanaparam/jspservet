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
        
        <a>ADMIN PAGE</a>
  
 		<a href="AdminUser.jsp" style="margin-left:30%; margin-right:4%; margin-top:4%">User</a>
  		<a href="AdminRoom.jsp" style="margin-right:3%; margin-top:4%">Rooms</a>
       	<a href="AdminUserFood.jsp" style="margin-right:3%; margin-top:4%">Foods</a>
       	<a href="AdminAddRooms.jsp" style="margin-right:3%; margin-top:4%">Add Rooms</a>
       	<a href="AdminAddFood.jsp" style="margin-right:3%; margin-top:4%">Add Foods</a>
  
      
         
  </div>
      
    </div>
    <div class="btn1">
        <a href=""><button type="button" value="">Logout</button></a>
    </div>
    
 
    <div>       
        <table>

  <tr>
  
   <th>Room Type</th>
   <th>Room Name</th>
   <th>Room Details</th>
   <th>Availability</th>
   <th>UPDATE</th>
  
   
  
    
   
  </tr>
  <%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM rooms";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
		%>
		<tr>
		
		<td><%=resultSet.getString("RoomType") %></td>
		<td><%=resultSet.getString("RoomName") %></td>
		<td><%=resultSet.getString("Details") %></td>
		<td><%=resultSet.getString("Status") %></td>
		
		<td><a href="AdminRoomEdit.jsp?id=<%=resultSet.getString("RoomType")%>"><button class="update" type="button">Update</button></a></td>  
      	
		 </tr>
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