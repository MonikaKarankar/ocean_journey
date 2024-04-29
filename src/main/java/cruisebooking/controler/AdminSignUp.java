package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.Admin;
import cruisebooking.dto.AdminCrud;

@WebServlet("/adminregistration")
public class AdminSignUp extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fName = req.getParameter("fName");
		String lName = req.getParameter("lName");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String dLocation = req.getParameter("dlocation");
		long phone = Long.parseLong(req.getParameter("phone"));
		long adhar = Long.parseLong(req.getParameter("adhar"));
		String idProof = req.getParameter("idproof");
		String position = req.getParameter("position");
		String department = req.getParameter("department");
		String password = req.getParameter("password");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		
		Admin admin = new Admin();
		admin.setfName(fName);
		admin.setlName(lName);
		admin.setEmail(email);
		admin.setAddress(address);
		admin.setdLocation(dLocation);
		admin.setPhone(phone);
		admin.setAdhar(adhar);
		admin.setIdproof(idProof);
		admin.setPosition(position);
		admin.setDepartment(department);
		admin.setPassword(password);
		admin.setDate(date);
		admin.setTime(time);
		
		AdminCrud adminCrud = new AdminCrud();
		RequestDispatcher dispatcher;
		try {
			int count = adminCrud.addAdmin(admin);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("adminRegistration.jsp");
				req.setAttribute("message", "Admin Added Successfull");
			}else {
				dispatcher = req.getRequestDispatcher("adminRegistration.jsp");
				req.setAttribute("message", "Admin Not Added Please try Again");
			}
			dispatcher.forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
