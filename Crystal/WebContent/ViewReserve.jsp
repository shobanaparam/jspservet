<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="connection.DbConnection"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Reserve</title>
 <link rel="stylesheet" type="text/css" href="style.css">
<title>Edit Reserve</title>
<style>
    <style>
        input[type=text] {
            width: 130px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            background-color: white;
            background-image: url('searchicon.png');
            background-position: 10px 10px;
            background-repeat: no-repeat;
            padding: 12px 20px 12px 40px;
            -webkit-transition: width 0.4s ease-in-out;
            transition: width 0.4s ease-in-out;
        }

        input[type=text]:focus {
            width: 100%;
        }
        
        

.Box
{
    position: absolute;
    top:90%;
    left:50%;
    transform: translate(-50%,-50%);
    width:400px;
    height: 300px;
    box-sizing: border-box;
    border-radius:20px ;
    background: rgba(0,0,0,.6);
    text-color:red;
}



</style>
</head>
<body style="	background:URL(images/back.jpg);background-size:100% ;background-repeat:repeat;">
<div class="av">
 

        <div class="bad">
            <ul class="na">
                <li><a href="#img"><img id="img" src="images/5994_1436497796_crystalpalace6.jpg"  /></a></li>

                <li><a href="Home.jsp" style="margin-top:40px;">Home</a></li>

                <li><a href="contact.jsp" style="margin-top:40px;">Contact</a></li>
                <li><a href="about.jsp" style="margin-top:40px;">About</a></li>
                <li style="margin-top:41px;"><div class="dropdown">
                    <button class="dropbtn">Facilities
                        <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="dropdown-content">
                        <a href="Rooms.jsp">Rooms</a>
                        <a href="Foods.jsp">Foods</a>
                    </div>
                </div> </li>

                <li style="float:right;margin-top:40px;"><a href="crystal.jsp">Logout</a></li>
                <li style="float:right;margin-top:40px;">
                   
                </li>
            </ul>

        </div>
        
   
    </div>
<div class="Box">
<div class="site_container">

                    <div class="grid_container">
     
			<center>
				<div class="post">
					
           
 
<br></br>
             
   <h2 class="title">View Reserve</h2>
					
					<div class="entry">


    	   

                                
<%
    	                                   	try{
    	                                   		Connection con = DbConnection.getDBConnection(); 
    	                                   	 		        Statement myStm= con.createStatement();

    	                                   	 		       	
    	                                   	 		        
    	                                   	 		       	String query  ="SELECT * FROM logintemp l, reserve1 r where r.UserName = l.UserName";

    	                                       				ResultSet  resultSet = myStm.executeQuery(query);
    	                                       
    	                                         		
    	                                         				if(resultSet.next()){
    	                                   %>
                     <table >          
                                    
                                <tr>
                                    <td>User Name :</td>
                                    <td><%=resultSet.getString("UserName") %></td>
                                </tr>
                                <tr>
                                    <td>Address :</td>
                                    <td><%=resultSet.getString("Address") %></td>
                                </tr>
                                <tr>
                                    <td>Room Type :</td>
                                    <td><%=resultSet.getString("Room") %></td>
                                </tr>
                                <tr>
                                    <td>Beds :</td>
                                    <td><%=resultSet.getString("Beds") %></td>
                                </tr>
                                <tr>
                                    <td>Arrival Date :</td>
                                    <td><%=resultSet.getString("ADate") %></td>
                                </tr>
                                <tr>
                                    <td>Departure Date :</td>
                                    <td><%=resultSet.getString("DDate") %></td>
                                </tr>
     </table>
          <br>
                                <tr>
                                  <td><a href="EditReserve.jsp?id=<%=resultSet.getString("UserName")%>"><button class="update" type="button">Edit Details</button></a></td>  
      						      <td><a href="DeleteReserveHandler?id=<%=resultSet.getString("UserName")%>"><button class="delete" type="button">Cancel Booking</button></a></td>
      						      <td><a href="RoomPayment.jsp"><button type="button">View Room Payment</button></td>  
       						   </tr>
 								 
                                	                            	
         
                                                       
<% 
				}
      
      			con.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
                           
                           </div></div></center></div></div></div>
</body>
</html>