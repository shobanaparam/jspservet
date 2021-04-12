package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Order;
import ServiceFiles.OrderService;



@WebServlet("/OrderHandler")
public class OrderHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String foodtype=request.getParameter("foodtype");
		String qty=request.getParameter("qty");
		
		Order order=new Order();
		order.setUsername(username);
		order.setFoodtype(foodtype);
		order.setQty(qty);
		
	
		OrderService odsv=new OrderService();
		if(odsv.insertOrder(order))
			response.sendRedirect("ViewOrder.jsp");
		
		
	
		
	
		
		
	}

}
