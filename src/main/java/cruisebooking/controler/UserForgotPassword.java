package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.UserDao;
import cruisebooking.dto.UserDto;

@WebServlet("/forgotpassword")
public class UserForgotPassword extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmPassword");
		
		UserDao dao = new UserDao();
		dao.setEmail(email);
		dao.setPassword(password);
		dao.setConfirmPassword(confirmPassword);
		
		UserDto dto = new UserDto();
		RequestDispatcher dispatcher ;
		try {
			int count = dto.forgotUserPassword(email, password);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("forgotuserpassword.jsp");
				req.setAttribute("message", "Password Updated Successfully");
			}else {
				dispatcher = req.getRequestDispatcher("forgotuserpassword.jsp");
				req.setAttribute("message", "Password Not Updated Try Again");
			}	
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
		
	}

}
