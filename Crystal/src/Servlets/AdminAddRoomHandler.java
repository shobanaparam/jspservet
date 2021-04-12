package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.AdminAddRooms;
import ServiceFiles.AdminAddRoomService;

/**
 * Servlet implementation class AdminAddRoomsHandler
 */
@WebServlet("/AdminAddRoomHandler")
public class AdminAddRoomHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddRoomHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomtype=request.getParameter("roomtype");
		String roomname=request.getParameter("roomname");
		String details=request.getParameter("details");
		String status=request.getParameter("status");
		
		AdminAddRooms addroom=new AdminAddRooms();
		addroom.setRoomtype(roomtype);
		addroom.setRoomname(roomname);
		addroom.setDetails(details);
		addroom.setStatus(status);
		
		AdminAddRoomService aars=new AdminAddRoomService();
		if(aars.insertRooms(addroom))
			response.sendRedirect("AdminAddRooms.jsp");
		
		
	}
}

