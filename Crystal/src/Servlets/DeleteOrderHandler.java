package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles.FoodDeleteService;




/**
 * Servlet implementation class DeleteOrderHandler
 */
@WebServlet("/DeleteOrderHandler")
public class DeleteOrderHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteOrderHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("id");
		
		FoodDeleteService fdsv=new FoodDeleteService();
		
		if(fdsv.deleteOrder(username))
			response.sendRedirect("Foods.jsp");
	}

}
