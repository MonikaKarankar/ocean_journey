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

@WebServlet("/contact")
public class Contact extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		long contactno = Long.parseLong(req.getParameter("contactno"));
		String email = req.getParameter("email");
		String message = req.getParameter("message");
		ContactUs contact = new ContactUs();
		contact.setName(name);
		contact.setContactno(contactno);
		contact.setEmail(email);
		contact.setMessage(message);
		
		RequestDispatcher dispatcher;
		
		ContactCurd contactCurd = new ContactCurd();
		try {
			int count = contactCurd.contact(contact);
			if(count > 0) {
				dispatcher = req.getRequestDispatcher("oceanjourny.jsp");
				req.setAttribute("message", "Your Response Save");
			}else {
				dispatcher = req.getRequestDispatcher("oceanjourny.jsp");
				req.setAttribute("message", "Your Response not Save");
			}
			dispatcher.forward(req, resp);
		}catch(Exception exception) {
			exception.printStackTrace();
		}
	}

}
