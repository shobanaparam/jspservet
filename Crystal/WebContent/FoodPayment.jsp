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
                        <a href="Food.jsp">Foods</a>
                        
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

	 		       	
	 		        
	 		       	String query  ="SELECT * FROM logintemp l, order1 r where r.UserName = l.UserName";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      		
      				if(resultSet.next()){
    	  
    	  
      					
%>
        <tr>
            <td>
                <h1>Food Payment</h1>
     

        <tr>
            <td>
                <h3>Food Name</h3>
                <td></td>
                <td></td>
               	<td><%=resultSet.getString("FoodType") %></td>
               	
           
        </tr>

        <tr>
                <td>
                <h3>Qty</h3>
                <td></td>
                <td></td>
               	<td><%=resultSet.getString("Qty") %></td>
               
        </tr>
        
        
       
        
        <tr>
            <td></td>
            <td></td>
        </tr>
        
        <tr>
            <td><h3>Total Amount</h3></td>
            <td></td>
            <td></td>
            <td id="totalPrice">
               <script type="text/javascript">
                              	var total=0;
                  var food = new String(" <%=resultSet.getString("FoodType") %>");
                  var qty = new String(" <%=resultSet.getString("Qty") %>");
                  
              
                  var y = "1";
                  var x = "Dumpling";
                  var x1 = "Bg";
                  var x2 = "Shrimp";
                  var x3 = "Briyani";
                  var x4 = "Phuket";
                  var x5 = "Mancari";
                                
                                if(food.trim() == x.trim() ){
                                   var rprice=1500;
                                   total+=rprice* <%=resultSet.getString("Qty") %>;
                                   document.getElementById("totalPrice").innerHTML = total+" LKR";
                                }
                                else if(food.trim() == x1.trim()){
                                   var rprice=2000;
                                   total+=rprice* <%=resultSet.getString("Qty") %>;
                                   document.getElementById("totalPrice").innerHTML = total+" LKR";
                                }
                           
                                else if(food.trim() == x2.trim()){
                                    var rprice=3000;
                                    total+=rprice* <%=resultSet.getString("Qty") %>;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                else if(food.trim() == x3.trim()){
                                    var rprice=3000;
                                    total+=rprice* <%=resultSet.getString("Qty") %>;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                else if(food.trim() == x4.trim()){
                                    var rprice=3500;
                                    total+=rprice* <%=resultSet.getString("Qty") %>;
                                    document.getElementById("totalPrice").innerHTML = total+" LKR";
                                 }
                                else if(food.trim() == x5.trim()){
                                    var rprice=4000;
                                    total+=rprice* <%=resultSet.getString("Qty") %>;
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
