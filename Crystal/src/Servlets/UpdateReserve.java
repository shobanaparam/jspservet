package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Reserve;
import ServiceFiles.RoomUpdateService;

/**
 * Servlet implementation class UpdateReserve
 */
@WebServlet("/UpdateReserve")
public class UpdateReserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReserve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String address=request.getParameter("address");
		String room=request.getParameter("room");
		String Beds=request.getParameter("Beds");
		String ArrivalDate=request.getParameter("ArrivalDate");
		String DepartureDate=request.getParameter("DepartureDate");
		
		Reserve reserve=new Reserve();
		reserve.setUsername(username);
		reserve.setAddress(address);
		reserve.setRoom(room);
		reserve.setBeds(Beds);
		reserve.setArrivalDate(ArrivalDate);
		reserve.setDepartureDate(DepartureDate);
		
		RoomUpdateService rusv=new RoomUpdateService();
		if(rusv.updateReserve(reserve))
			response.sendRedirect("ViewReserve.jsp");
		
		
	}
}