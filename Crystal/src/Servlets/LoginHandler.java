package Servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Login;
import ServiceFiles.LoginService;


/**
 * Servlet implementation class LoginHandler
 */
@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginHandler() {
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				String username=request.getParameter("username");
				String password=request.getParameter("password");
				
				Login login=new Login();
				login.setUsername(username);
				login.setPassword(password);
				
				LoginService regsv=new LoginService();
				if(username.equals("Admin") && password.equals("Admin123@"))
				{
					response.sendRedirect("AdminUser.jsp");
				}
				else if(regsv.checkLogin(login))
					response.sendRedirect("Home.jsp");
				
				else
					response.sendRedirect("Login.jsp");
				
				
			
	}

}
