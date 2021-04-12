<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>

<%
	String id=request.getParameter("id");
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin User Edit</title>
</head>
<body>

<%

			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();
	 		       	String query  ="SELECT * FROM rooms WHERE RoomType='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
 
    <div class="add_form">       
     <form name="Room_Form" action="AdminUpdateRoomHandlers" method="POST">
  Room Type:<br>
  <input size="25" type="text" name="roomtype" value="<%=resultSet.getString("RoomType") %>">
  <br><br>
  Room Name:<br>
  <input size="25" type="text" name="roomname" value="<%=resultSet.getString("RoomName") %>">
  <br><br>
   Room Details:<br>
  <input size="50" type="text" name="details" value="<%=resultSet.getString("Details") %>">
  <br><br>

   Availability:<br>
  <input type="radio" name="status" value="availabile" checked>Available<br>
  <input type="radio" name="status" value="Non-Availabile">Non-Available<br>
  <br>
  <br>
<div>
  <input type="submit" value="Submit">
  </div>
 


     </form>
     </div>
       <% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
</body>
</html>