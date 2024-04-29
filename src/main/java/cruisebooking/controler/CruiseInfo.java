package cruisebooking.controler;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.Cruise;
import cruisebooking.dto.CruiseCrud;

@WebServlet("/cruiseinfo")
public class CruiseInfo extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cruiseName = req.getParameter("cruiseName");
		String cruiseId = req.getParameter("cruiseId");
		String ownerName = req.getParameter("ownerName");
		String[] classType = req.getParameterValues("classType");
		double size = Double.parseDouble(req.getParameter("size"));
		double speed = Double.parseDouble(req.getParameter("speed"));
		int passengerCapacity = Integer.parseInt(req.getParameter("passengerCapacity"));
		int baggageCapacity = Integer.parseInt(req.getParameter("baggageCapacity"));
		int totalCapacity = Integer.parseInt(req.getParameter("totalCapacity"));
		String joinDate = req.getParameter("joinDate");
		String time = req.getParameter("time");
		
		Cruise cruise = new Cruise();
		cruise.setCruiseName(cruiseName);
		cruise.setCruiseId(cruiseId);
		cruise.setOwnerName(ownerName);
		cruise.setClassType(classType);
		cruise.setSize(size);
		cruise.setSpeed(speed);
		cruise.setPassengerCapacity(passengerCapacity);
		cruise.setBaggageCapacity(baggageCapacity);
		cruise.setTotalCapacity(totalCapacity);
		cruise.setJoinDate(joinDate);
		cruise.setTime(time);
		CruiseCrud crud = new CruiseCrud();
		RequestDispatcher dispatcher;
		
		try {	
			int count  = crud.cruiseInfo(cruise);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("cruiseinfo.jsp");
				req.setAttribute("message", "Cruise Added");
				
			}else {
				dispatcher = req.getRequestDispatcher("cruiseinfo.jsp");
				req.setAttribute("message", "Something went worng");
				
			}
			dispatcher.forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
