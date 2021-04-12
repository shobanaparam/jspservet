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
    <title> Crystal Palace </title>
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
        
        

.Box
{
    position: absolute;
    top:90%;
    left:50%;
    transform: translate(-50%,-50%);
    width:450px;
    height: 425px;
    box-sizing: border-box;
    border-radius:20px ;
    background: rgba(0,0,0,.6);
    text-color:red;
}

table
{
    font-weight: bold;
    color: #62e1c8;
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
	
		
<div class="Box">
<div class="site_container">

                    <div class="grid_container">
     
			<center>
				<div class="post">
					
           
 

					
					<div class="entry">
		

<br></br>

    <table>
    
    <%
			try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();

	 		       	
	 		        
	 		       	String query  ="SELECT * FROM logintemp l, reserve1 r where r.UserName = l.UserName";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      		
      				if(resultSet.next()){
    	  
    	  
      					
%>
	
        <tr>
            <td>
                <h2>Room Payment</h2>
            </td>
			
        </tr>

		<tr>
            <td>
                <h3>User Name</h3>
                <td></td>
                <td></td>
               	<td><%=resultSet.getString("UserName") %></td>
               	
           
        </tr>
		
        <tr>
            <td>
                <h3>Room</h3>
                <td></td>
                <td></td>
               	<td><%=resultSet.getString("Room") %></td>
               	
           
        </tr>

        <tr>
                <td>
                <h3>Beds</h3>
             	<td></td>
                <td></td>
               	<td><%=resultSet.getString("Beds") %></td>
               
        </tr>
        
        
        <tr>
                <td>
                <h3>Date</h3>
                <td></td>
                <td></td>              
                <td id="dt">
               	
                <script type="text/javascript">
                    	var start = new Date("<%=resultSet.getString("ADate") %>");
                    	var end = new Date("<%=resultSet.getString("DDate") %>");


                    	var loop = new Date(start);
                        
						var c =-1;
                    	while(loop <= end){  
                    	   var newDate = loop.setDate(loop.getDate() + 1);
                    	   loop = new Date(newDate);
                    	   c++;
                    	}

                    	document.getElementById("dt").innerHTML = c; 
                </script>
           </td>
           
        </tr>
        
        <tr>
            <td></td>
            <td></td>
        </tr>
        
        <tr>
            <td><h3>Total Amount</h3></td>
            <td></td>
            <td></td>
            <td id="totalPrice" name="total" >
               <script type="text/javascript">
                              	var total=0;
                  var room = new String(" <%=resultSet.getString("Room") %>");
                  
                  var x = "NON DULEXE";
                  var x1 = "LUXARY";
                  var x2 = "PREMIER DULEXE";
                  var x3 = "DULEXE";
                  var x4 = "PREMIER LUXARY";
                  var x5 = "SUPER DULEXE";
                                
                                if(room.trim() == x.trim()){
                                   var rprice=15000;
                                   total+=rprice*document.getElementById("dt").innerHTML;
                                   document.getElementById("totalPrice").innerHTML = total+" LKR";
                                }
                                else if(room.trim() == x1.trim()){
                                   var rprice=18000;
                                   total+=rprice*document.getElementById("dt").innerHTML;
                                   document.getElementById("totalPrice").innerHTML = total+" LKR";
                                }
                           
                                else if(room.trim() == x2.trim()){
                                    var rprice=20000;
                                    total+=rprice*document.getElementById("dt").innerHTML;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                else if(room.trim() == x3.trim()){
                                    var rprice=25000;
                                    total+=rprice*document.getElementById("dt").innerHTML;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                else if(room.trim() == x4.trim()){
                                    var rprice=28000;
                                    total+=rprice*document.getElementById("dt").innerHTML;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                else if(room.trim() == x5.trim()){
                                    var rprice=30000;
                                    total+=rprice*document.getElementById("dt").innerHTML;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                
                                
                                
              </script>
         	</td>
                
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
</div>
</center>
</div>
</div>
</div>
</div>

</body>
</html>
