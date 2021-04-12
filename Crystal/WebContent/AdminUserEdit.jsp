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
	 		       	String query  ="SELECT * FROM reserve1 WHERE UserName='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
<form name="AdminrUpdate" method="post" action="AdminUserUpdateHandler">

    	    <table align="center">
         	
          	<tr>
          		<td>User Name</td>
          		<td colspan='3'><input type="textbox" class="inputeffect" name="username" value="<%=resultSet.getString("UserName") %>"></td>
           	</tr>
           	<tr>
          		<td>Address</td>
          		<td colspan='3'><input type="textbox" class="inputeffect" name="address" value="<%=resultSet.getString("Address") %>"></td>
           	</tr>
           	<tr>
          		<td>Room Type</td>
          		<td> <select type="textbox" class="inputeffect" name="room" value="<%=resultSet.getString("Room") %>">

					<option value="Room Type" > </option>
					<option value="NON DULEXE"selected>NON DULEXE</option>
  					<option value="LUXARY">LUXARY </option>
					<option value="PREMIER DULEXE">PREMIER DULEXE</option>
   					<option value="DULEXE">DULEXE</option>
					<option value="PREMIER LUXARY">PREMIER LUXARY</option>
    				<option value="SUPER DULEXE">SUPER DULEXE</option>
   				 </select>
 				 </tr>
           	<tr>
          		<td>No Of Beds : </td>  
				<td> <select type="textbox" class="inputeffect"  name="Beds" value="<%=resultSet.getString("Beds") %>">
					<option value="01"  selected>01</option>
					<option value="02" >02</option>
					<option value="03" >03</option>
					<option value="04" >04</option> 
	
			</select></td> 
           	</tr>   

			<tr>
					<td>Arrival Date	:</td>
					<td><input type="date" class="inputeffect" name="ArrivalDate" value="<%=resultSet.getString("ADate") %>" ></td>
			</tr>
           	
			<tr> 
					<td>Departure Date	:</td>
					<td><input type="date" class="inputeffect" name="DepartureDate" value="<%=resultSet.getString("DDate") %>"></td>
			</tr>
			
           	<tr>
           	<td></td><td></td><td></td>
           	<td><br/><br/><input type="submit" class="btn" value="SUBMIT"></td>
           	</tr>
          </table>
          
       </form>
       
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