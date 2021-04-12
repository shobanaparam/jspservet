<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>Register</title>
    <script type="text/javascript" src="validation.js"></script>
<style>

.SignupBox
{
    position: absolute;
    top:70%;
    left:50%;
    transform: translate(-50%,-50%);
    width:420px;
    height: 295px;
    box-sizing: border-box;
    border-radius:20px ;
    background: rgba(0,0,0,.6);
}
h2
{
    margin: 0;
    padding: 0 0 20px;
    top:50%;
    color: #e141c1;
    text-align: center;
}

table
{
    font-weight: bold;
    color: #62e1c8;
}

.form input[type="text"],
.form input[type="password"],
.form input[type="submit"]
{
    width: 100%;
    font-weight:bold;

}
.form-signup {
    color: #933b8d;
}

.form-signup input[type="text"],
.form-signup input[type="password"],
.form-signup input[type="submit"]
{
    border-radius: 0.25rem;
    padding: 0.7rem;

}

.form-signup input[type="text"],
.form-signup input[type="password"] {
    background-color: rgba(175, 131, 158, 0.89);
    border-bottom-left-radius: 0;
    border-top-left-radius: 0;
}


.form-signup input[type="text"]:focus,
.form-signup input[type="text"]:hover,
.form-signup input[type="password"]:focus,
.form-signup input[type="password"]:hover {
    background-color: #52d02f;
}

.form-signup input[type="submit"] {
    background-color: #82ea53;
    color: #030f11;
    font-weight: bold;
    align:center;
}
.form-signup input[type="submit"]:focus,
.form-signup input[type="submit"]:hover {
    background-color: #1ed412;
}
.form_field {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    margin-bottom: 0.5rem;
}
.form_input {
    -webkit-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
}

.grid_container {
    margin: 0 auto;
    max-width: 20rem;
    width: 90%;
}

.site_container {
    -webkit-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    padding: 1.2rem 0;
}

.submit{

    margin: 40px 100px;
    font-weight: bold;
}


</style>
</head>
<body style="	background:URL(images/back.jpg);background-size:100% ;background-repeat:repeat;">
            <div class="SignupBox">

                <div class="site_container">

                    <div class="grid_container">

                        <form name="Reg_Form" action="RegisterHandler" method="POST" onsubmit="return validate()" class="form form-signup" >

                            <h2>Registration Form</h2>

                            <table>
                              
                                <tr>
                                    <td>User Name</td>
                                    <td><input type="text" name="username" ></td>
                                </tr>
								<tr>
                                    <td>E-mail</td>
                                    <td><input type="text" name="email" ></td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td><input type="password" name="password" ></td>
                                </tr>
                     

                            </table>

                            <div class="submit">
                                <input type="submit" value="Submit"onclick="HomeSession()" >
                            </div>
                            
                     </form>
               </div>
          </div>
   </div>
                            


</body>
</html>