package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.Cruise;
import cruisebooking.dto.CruiseCrud;

@WebServlet("/delete")
public class CruiseDelete extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cruiseId = req.getParameter("cruiseId");
		
		Cruise cruise = new Cruise();
		cruise.setCruiseId(cruiseId);
		
		CruiseCrud crud = new CruiseCrud();
		RequestDispatcher dispatcher ;
		try {
			int count = crud.deleteCruise(cruiseId);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("showcruiseinfo.jsp");
				req.setAttribute("delete", "Cruise Delete Successfully");
				
			}else {
				dispatcher = req.getRequestDispatcher("showcruiseinfo.jsp");
				req.setAttribute("delete", "Cruise Not Deleted");
			}
			dispatcher.forward(req, resp);		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
