package cruisebooking.controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.CruiseStaff;
import cruisebooking.dto.CruiseStaffCurd;

@WebServlet("/cruiseStaff")
public class CruiseStaffAdd extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fName = req.getParameter("fName");
		String lName = req.getParameter("lName");
		long phone = Long.parseLong(req.getParameter("phone"));
		String address = req.getParameter("address");
		String poiletId = req.getParameter("poiletId");
		String state = req.getParameter("state");
		String email = req.getParameter("email");
		String position = req.getParameter("position");
		int age = Integer.parseInt(req.getParameter("age"));
		long adhar = Long.parseLong(req.getParameter("adhar"));
		String company = req.getParameter("company");
		String joinDate = req.getParameter("joinDate");
		double salary = Double.parseDouble(req.getParameter("salary"));
		
		CruiseStaff cruiseStaff = new CruiseStaff();
		cruiseStaff.setfName(fName);
		cruiseStaff.setlName(lName);
		cruiseStaff.setPhone(phone);
		cruiseStaff.setAddress(address);
		cruiseStaff.setPoiletId(poiletId);
		cruiseStaff.setState(state);
		cruiseStaff.setEmail(email);
		cruiseStaff.setPosition(position);
		cruiseStaff.setAge(age);
		cruiseStaff.setAdhar(adhar);
		cruiseStaff.setCompany(company);
		cruiseStaff.setJoinDate(joinDate);
		cruiseStaff.setSalary(salary);
		RequestDispatcher dispatcher;
		
		try {
			CruiseStaffCurd cruiseStaffCurd = new CruiseStaffCurd();
			int count = cruiseStaffCurd.cruiseStaff(cruiseStaff);
			if(count >0) {
				
				List<CruiseStaff> cruiseStaffs = cruiseStaffCurd.getAllCruiseStaff();
				dispatcher = req.getRequestDispatcher("cruiseStaff.jsp");
				req.setAttribute("message", "Staff Added Successfully");
			}else {
				dispatcher = req.getRequestDispatcher("cruiseStaff.jsp");
				req.setAttribute("message", "Staff Not added please try again");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
	}

}
