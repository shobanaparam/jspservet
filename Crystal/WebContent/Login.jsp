<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    
    <title>Login</title>
<style>


.loginBox
{
    position: absolute;
    top:50%;
    left:50%;
    transform: translate(-50%,-50%);
    width:350px;
    height: 430px;
    box-sizing: border-box;
    border-radius:20px ;
    background: rgba(0,0,0,.6);
}

.user
{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    overflow: hidden;
    position: absolute;
    top: calc(-1px/4);
    left: calc(50% - 50px);
}

a {
    color: #eee4ee;
    outline: 0;

    text-decoration: none;
}
a:focus, a:hover {
    text-decoration: underline;
}

.form input[type="password"],
.form input[type="text"],
.form input[type="submit"] {
    width: 100%;
}

.form-login {
    color: #933b8d;
}

.form-login input[type="text"],
.form-login input[type="password"],
.form-login input[type="submit"] {
    border-radius: 0.25rem;
    padding: 1rem;
    font-weight:bold;
}

.form-login input[type="text"],
.form-login input[type="password"] {
    background-color: #3b4148;
    border-bottom-left-radius: 0;
    border-top-left-radius: 0;
    font-weight:bold;
    font-size: 15px;
}

.form-login input[type="text"]:focus,
.form-login input[type="text"]:hover,
.form-login input[type="password"]:focus,
.form-login input[type="password"]:hover{
    background-color: #d05e73;
}

.form-login input[type="submit"] {
    background-color: #82ea53;
    color: #030f11;
    font-weight: bold;
    text-transform: uppercase;
    left:50%;
}
.form-login input[type="submit"]:focus,
.form-login input[type="submit"]:hover {
    background-color: #1ed412;
}
.form_field {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    margin-bottom: 1rem;


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
    padding: 8rem 0;
}
.center{
    padding-left: 20%;
}
</style>
</head>
<body style="	background:URL(images/back.jpg);background-size:100% ;background-repeat:repeat;">



        <div class="loginBox" >
            <img src="images/user.png" class="user">

            <div class="site_container">

                <div class="grid_container">

                    <form name="login" action="LoginHandler" method="POST" onsubmit="return validation()" class="form form-login" >

                        <div class="form_field">
                            <input id="login_username" type="text" class="form_input" name="username"/>
                        </div>

                        <div class="form_field">
                            <input id="login_password" type="password" class="form_input"  name="password"/>
                        </div>

                        <div class="form_field">

                            <input type="submit" value="Login">
                        </div>
                        <div>
                        <p> <a href="Register.jsp">  Create New Account</a></p>
                        </div>
                        

                        <table >
                            <tr>

                                <td >

                                </td>
                            </tr>

                           
                        </table>
                    </form>


                </div>

            </div>
</div>



</body>

