package cruisebooking.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cruisebooking.dao.ContactUs;

public class ContactCurd {
	
	UserDto dto = new UserDto();
	public int contact(ContactUs contactUs) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement= connection.prepareStatement("INSERT INTO conact (name, contactno, email, message) VALUES(?,?,?,?)");
		preparedStatement.setString(1, contactUs.getName());
		preparedStatement.setLong(2, contactUs.getContactno());
		preparedStatement.setString(3, contactUs.getEmail());
		preparedStatement.setString(4, contactUs.getMessage());
		
		int count = preparedStatement.executeUpdate();
		connection.close();
		return count;
	}
	
	public int countOfContact() throws Exception {
	    Connection connection = dto.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(DISTINCT email) FROM conact");
	    ResultSet resultSet = preparedStatement.executeQuery();

	    int count = 0;
	    if (resultSet.next()) {
	        count = resultSet.getInt(1);
	    }
	    resultSet.close();
	    preparedStatement.close();
	    connection.close();

	    return count;
	}
	
	public List<ContactUs> getAllContact() throws Exception{
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM conact");
		ResultSet resultSet= preparedStatement.executeQuery();
		List<ContactUs> list = new ArrayList<ContactUs>();
		while(resultSet.next()) {
			ContactUs contactUs = new ContactUs();
			contactUs.setId(resultSet.getInt("id"));
			contactUs.setName(resultSet.getString("name"));
			contactUs.setContactno(resultSet.getLong("contactno"));
			contactUs.setEmail(resultSet.getString("email"));
			contactUs.setMessage(resultSet.getString("message"));
			list.add(contactUs);
		}
		preparedStatement.close();
		connection.close();
		return list;
		
		
	}

	public int deleteContact(String email) throws Exception {
		ContactUs contactUs = new ContactUs();
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM conact WHERE email = ?");
		preparedStatement.setString(1, email);
		int count = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return count;
	}
}
