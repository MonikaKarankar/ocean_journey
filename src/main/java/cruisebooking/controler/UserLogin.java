package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cruisebooking.dao.UserDao;
import cruisebooking.dto.UserDto;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		UserDto dto = new UserDto();
		RequestDispatcher dispatcher;
		try {
			 UserDao dao = dto.userLogin(email);
			 if(dao.getPassword() != null) {
				 if(dao.getPassword().equals(password)) {
					 HttpSession httpSession = req.getSession();
					 httpSession.setAttribute("session", email);
					 
					 dispatcher = req.getRequestDispatcher("userHome.jsp");
					 req.setAttribute("message", "Login Success");	 
				 }else {
					 dispatcher = req.getRequestDispatcher("userlogin.jsp");
					 req.setAttribute("message", "Invalid Password, please try again");
				 }
				 
			 }else {
				 dispatcher = req.getRequestDispatcher("userRegistration.jsp");
				 req.setAttribute("message", "Invalid Email please SignUp");
			 }
			 dispatcher.forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
