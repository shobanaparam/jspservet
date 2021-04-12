package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ServiceFiles.RoomDeleteService;


/**
 * Servlet implementation class DeleteReserveHandler
 */
@WebServlet("/DeleteReserveHandler")
public class DeleteReserveHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteReserveHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("id");
		
		RoomDeleteService rdsv=new RoomDeleteService();
		
		if(rdsv.deleteReserve(username))
			response.sendRedirect("Rooms.jsp");
	}

}
