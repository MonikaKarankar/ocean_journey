package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.CruiseStaff;
import cruisebooking.dto.CruiseStaffCurd;

@WebServlet("/deletestaff")
public class CruiseSatffDelete extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String poiletId = req.getParameter("poiletId");
		CruiseStaff cruiseStaff = new CruiseStaff();
		cruiseStaff.setPoiletId(poiletId);
		RequestDispatcher dispatcher;
		CruiseStaffCurd cruiseStaffCurd = new CruiseStaffCurd();
		try {
			int count = cruiseStaffCurd.deleteCruiseStaff(poiletId);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("showcruisestaff.jsp");
				req.setAttribute("delete", "Cruise Staff Delete");
			}else {
				dispatcher = req.getRequestDispatcher("showcruisestaff.jsp");
				req.setAttribute("delete", "Cruise Staff Delete");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
	}
	
	

}
