package cruisebooking.controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cruisebooking.dao.Admin;
import cruisebooking.dao.CruiseStaff;
import cruisebooking.dto.AdminCrud;
import cruisebooking.dto.CruiseStaffCurd;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		AdminCrud adminCrud = new AdminCrud();
		RequestDispatcher dispatcher;
		try {
			Admin admin = adminCrud.adminLogin(email);
			if(admin.getPassword() != null) {
				if(admin.getPassword().equals(password)) {
					HttpSession httpSession = req.getSession();
					httpSession.setAttribute("session", email);
					
					List<Admin> admins= adminCrud.getAllAdmin();
					req.setAttribute("admins", admins);
							
					dispatcher = req.getRequestDispatcher("adminpanel.jsp");
					req.setAttribute("message", "Login success");
				}
				else {
					dispatcher = req.getRequestDispatcher("adminlogin.jsp");
					req.setAttribute("message", "Invalid Password");
				}
			}else {
				dispatcher = req.getRequestDispatcher("adminlogin.jsp");
				req.setAttribute("message", "Admin Not Found with given Email");
			}
			dispatcher.forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
