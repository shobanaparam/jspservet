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
    width:420px;
    height: 420px;
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
					
           
 
<br></br>
             
    <h2 class="title"><a href="#">Room Reserve</a></h2>
					
					<div class="entry">
		<p> <form method="post" text-color:'red' action="OrderHandler">

<br></br>

<table>
<%
try{
	 		       	Connection myCon = DriverManager.getConnection(url,username,password);
	 		        Statement myStm= myCon.createStatement();

	 		       	
	 		        
	 		       	String query  ="SELECT * FROM logintemp l, register1 r where r.UserName = l.UserName";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      		
      				if(resultSet.next()){
    	  
    	  
      					
%>
                              <tr>
 		<td>User Name : </td>   
		<td><input type="textbox" name="username" value="<%=resultSet.getString("UserName") %>"></td>
 </tr>
 
 	
  <td>Food Type	:
    
   <td> <select type="textbox" name="foodtype" value="">

<option value="Food Type"></option>
	<option value="Dumpling"selected>Dumpling</option>
    <option value="Bg">Bg </option>
	<option value="Shrimp">Shrimp</option>
    <option value="Briyani">Briyani</option>
	<option value="Phuket">Phuket</option>
    <option value="Mancari">Mancari</option>
    </select>
  </tr>

 <tr>
 		<td>No Of Item : </td>  
		<td> <select type="textbox" name="qty" value="">
		<option value="01"  selected>01</option>
		<option value="02" >02</option>
		<option value="03" >03</option>
		<option value="04" >04</option> 
	
			</select></td> 
 </tr>


</table>
<br><br>
 <input type="submit" name="submit" value="     Submit     ">	
        </form>
                               
                                	
                                                       
<% 
				}
      
      			myCon.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>
 
 

  
 </div>
</div>
				
                
</div>
				
			
		  <div style="clear: both; height: 1px"></div>
		</div>
	</div>
	
</div>
	
	

</body>
</html>