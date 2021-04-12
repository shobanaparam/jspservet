<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <div class="btn1">
        <a href="crystal.jsp"><button type="button" value="">Logout</button></a>
    </div>
    
 
    <div class="add_form">       
     <form name="Room_Form" action="AdminAddRoomHandler" method="POST">
  RoomType:<br>
  <input size="25" type="text" name="roomtype" value="">
  <br><br>
  Room Name:<br>
  <input size="25" type="text" name="roomname" value="">
  <br><br>
   Room Details:<br>
  <input size="50" type="text" name="details" value="">
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


 
	 








<br/><br/><br/>




	
 </body>
 </html>