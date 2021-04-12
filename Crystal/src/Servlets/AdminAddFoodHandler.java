package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.AdminAddFoods;
import ServiceFiles.AdminAddFoodService;


/**
 * Servlet implementation class AdminAddFoodHandler
 */
@WebServlet("/AdminAddFoodHandler")
public class AdminAddFoodHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddFoodHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String foodtype=request.getParameter("foodtype");
		String foodname=request.getParameter("foodname");
		String details=request.getParameter("details");

		
		AdminAddFoods addfood=new AdminAddFoods();
		addfood.setFoodtype(foodtype);
		addfood.setFoodname(foodname);
		addfood.setDetails(details);
	
		
		AdminAddFoodService aafs=new AdminAddFoodService();
		if(aafs.insertFood(addfood))
			response.sendRedirect("AdminAddFood.jsp");
		
		
	}
}

