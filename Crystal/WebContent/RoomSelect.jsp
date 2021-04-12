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
    <title> Cystal Palace </title>
    <link rel="stylesheet" type="text/css" href="style.css">
	<link href="default.css" rel="stylesheet" type="text/css" />
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
    </style>

</head>
<body style="	background:URL(images/back.jpg);background-size:100% ;background-repeat:repeat;">
<div class="av">
    <header>

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
    </header>
	
	<div id="page">
		<div class="entry" id="page-bgtop">
			<div id="content">
				<div class="post">
			
					<center>
					<div class="entry">
						<p><img src='images/SetRatioSize10001000-Grand-hotel-Union-Deluxe-Single-2-Room.jpg' width="564" height="400" /></p>
						  <p>  <a href="Reserve.jsp">Request Room</a>  </p> 
     											      

    <table>
    <%
			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();

	 		       	
	 		        
	 		       	String query  ="SELECT * FROM rooms";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      		while(resultSet.next()){
      			
      			
    	  
      %>
    
						
        <tr>
            
                <tr>
               	<td><h2><%=resultSet.getString("RoomType") %></h2></td>
               	 </tr> <tr> 
               	<td><%=resultSet.getString("RoomName") %></td>
               	   </tr><tr>
               	<td><%=resultSet.getString("Details") %></td>
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

</body>
</html>
        
        