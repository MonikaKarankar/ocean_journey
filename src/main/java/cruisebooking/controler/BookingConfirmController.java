package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.BookingConfirm;
import cruisebooking.dto.BookingConfirmCrud;

@WebServlet("/bookingconfirm")
public class BookingConfirmController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullName = req.getParameter("fullName");
		String email = req.getParameter("email");
		String cruiseId = req.getParameter("cruiseId");
		int noOfGuest = Integer.parseInt(req.getParameter("noOfGuest"));
		double totalPrice = Double.parseDouble(req.getParameter("totalPrice"));
		String cardHolderName = req.getParameter("cardholdername");
		String cardNo = req.getParameter("cardno");
		String expireDate = req.getParameter("expirydate");
		int cId = Integer.parseInt(req.getParameter("cId"));
		
		BookingConfirm bookingConfirm = new BookingConfirm();
		bookingConfirm.setFullName(fullName);
		bookingConfirm.setEmail(email);
		bookingConfirm.setCruiseId(cruiseId);
		bookingConfirm.setNoOfGuest(noOfGuest);
		bookingConfirm.setTotalPrice(totalPrice);
		bookingConfirm.setCardHolderName(cardHolderName);
		bookingConfirm.setCardNo(cardNo);
		bookingConfirm.setExpireDate(expireDate);
		bookingConfirm.setcId(cId);
		
		BookingConfirmCrud bookingConfirmCrud = new BookingConfirmCrud();
		RequestDispatcher dispatcher ;
		try {
			int count = bookingConfirmCrud.bookingConfirm(bookingConfirm);
			if(count > 0) {			
    			dispatcher = req.getRequestDispatcher("confirmpayment.jsp");
				req.setAttribute("message", "Booking Confirm");
				
			}else {				
				dispatcher = req.getRequestDispatcher("bookingdetails.jsp");
				req.setAttribute("message", "Try again something went wrong");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
		
	}	

}
