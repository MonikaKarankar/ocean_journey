package cruisebooking.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cruisebooking.dao.ContactUs;
import cruisebooking.dto.ContactCurd;

@WebServlet("/deletecontact")  
public class ContactDelete extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email") ;
		
		ContactUs contact = new ContactUs();
		contact.setEmail(email);
		
		ContactCurd contactCurd = new ContactCurd();
		RequestDispatcher dispatcher;
		try {
			int count = contactCurd.deleteContact(email);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("contact.jsp");
				req.setAttribute("message", "Contact Deleted Successfully");
			}else {
				dispatcher = req.getRequestDispatcher("contact.jsp");
				req.setAttribute("message", "Contact Not Deleted Successfully");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
		
	}

}
