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

@WebServlet("/userregistration")
public class UserController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullName = req.getParameter("fullName");
		String date = req.getParameter("date");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		String gender = req.getParameter("gender");
		String occupation = req.getParameter("occupation");
		String idType = req.getParameter("idType");
		String idNumber = req.getParameter("idNumber");
		String issuedState = req.getParameter("issuedState");
		String address = req.getParameter("address");
		String nationality = req.getParameter("nationality");
		String state = req.getParameter("state");
		String district = req.getParameter("district");
		int houseNumber = Integer.parseInt(req.getParameter("houseNumber"));
		String laneNumber = req.getParameter("laneNumber");
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmPassword");
		
		UserDao dao = new UserDao();
		dao.setFullName(fullName);
		dao.setDate(date);
		dao.setEmail(email);
		dao.setPhone(phone);
		dao.setGender(gender);
		dao.setOccupation(occupation);
		dao.setIdType(idType);
		dao.setIdNumber(idNumber);
		dao.setIssuedState(issuedState);
		dao.setAddress(address);
		dao.setNationality(nationality);
		dao.setState(state);
		dao.setDistrict(district);
		dao.setHouseNumber(houseNumber);
		dao.setLaneNumber(laneNumber);
		dao.setPassword(password);
		dao.setConfirmPassword(confirmPassword);
		
		UserDto dto = new UserDto();
		RequestDispatcher dispatcher;
		try {
			int count = dto.userRegister(dao);
			UserDao userPresent = dto.userPresent(idNumber);	
				if(dao.getPassword().equals(dao.getConfirmPassword())) {
					if(count > 0) {
						dispatcher = req.getRequestDispatcher("userlogin.jsp");
						req.setAttribute("message", "Register Success, Please Login");
					}else {
						dispatcher = req.getRequestDispatcher("userRegistration.jsp");
						req.setAttribute("message", "Somthing went wrong plese try again");
					}
				}else {
					dispatcher = req.getRequestDispatcher("userRegistration.jsp");
					req.setAttribute("message", "Password Not ConfirmPasswprd not same");
			    }
					
				
			dispatcher.forward(req, resp);
		}catch(Exception e) {
		    System.out.println(e);
//			dispatcher = req.getRequestDispatcher("userRegistration.jsp");
//			req.setAttribute("message", "Person with Id Number allready present");	
			
		}	
	}
}
