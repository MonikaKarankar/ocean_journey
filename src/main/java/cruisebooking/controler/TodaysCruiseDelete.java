package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.CreateCruise;
import cruisebooking.dto.CreateCruiseCrud;

@WebServlet("/deletetodayscruise")
public class TodaysCruiseDelete extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		CreateCruise createCruise = new CreateCruise();
		createCruise.setId(id);
		CreateCruiseCrud createCruiseCrud = new CreateCruiseCrud();
		RequestDispatcher dispatcher;
		try {
			int count = createCruiseCrud.cruiseDeleted(id);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("todayscruise.jsp");
				req.setAttribute("delete", "Cruise Deleted");
			}else {
				dispatcher = req.getRequestDispatcher("todayscruise.jsp");
				req.setAttribute("delete", "Cruise not Deleted");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
		
		
	}

}
