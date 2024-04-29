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

@WebServlet("/createcruise")
public class CreateCruiseInsert extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cruiseId = req.getParameter("cruiseId");
		String poiletId = req.getParameter("poiletId");
		String departureLocation = req.getParameter("departureLocation");
		String departureDate = req.getParameter("departureDate");
		String departureDay = req.getParameter("departureDay");
		String destinationLocation = req.getParameter("destinationLocation");
		String destinationDate = req.getParameter("destinationDate");
		String destinationDay = req.getParameter("destinationDay");
		String time = req.getParameter("time");
		double price = Double.parseDouble(req.getParameter("price"));
		
		CreateCruise createCruise = new CreateCruise();
		
		createCruise.setCruiseId(cruiseId);
		createCruise.setPoiletId(poiletId);
		createCruise.setDepartureLocation(departureLocation);
		createCruise.setDepartureDate(departureDate);
		createCruise.setDepartureDay(departureDay);
		createCruise.setDestinationLocation(destinationLocation);
		createCruise.setDestinationDate(destinationDate);
		createCruise.setDestinationDay(destinationDay);
		createCruise.setTime(time);
		createCruise.setPrice(price);
		
		RequestDispatcher dispatcher;
		try {
			CreateCruiseCrud createCruiseCrud = new CreateCruiseCrud();
			int count = createCruiseCrud.createCruise(createCruise);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("todayscruise.jsp");
				req.setAttribute("message", "Cruise Created");
			}else {
				dispatcher = req.getRequestDispatcher("todayscruise.jsp");
				req.setAttribute("message", "Cruise not Created");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
	}
}
