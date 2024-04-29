package cruisebooking.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cruisebooking.dao.BookingConfirm;

public class BookingConfirmCrud {
	
	UserDto dto = new UserDto();
	public int bookingConfirm(BookingConfirm bookingConfirm) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO bookingconfirm(fullName, email, cruiseId, noOfGuest, totalPrice, cardHolderName, cardNo, expireDate,cId) VALUES(?,?,?,?,?,?,?,?,?)");
	    preparedStatement.setString(1, bookingConfirm.getFullName());
	    preparedStatement.setString(2, bookingConfirm.getEmail());
	    preparedStatement.setString(3, bookingConfirm.getCruiseId());
	    preparedStatement.setInt(4, bookingConfirm.getNoOfGuest());
	    preparedStatement.setDouble(5, bookingConfirm.getTotalPrice());
	    preparedStatement.setString(6, bookingConfirm.getCardHolderName());
	    preparedStatement.setString(7, bookingConfirm.getCardNo());
	    preparedStatement.setString(8, bookingConfirm.getExpireDate());
	    preparedStatement.setInt(9, bookingConfirm.getcId());
	    int count = preparedStatement.executeUpdate();
	    connection.close();
	    return count;
	}
	
	public BookingConfirm getDetails(int cId) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM bookingconfirm WHERE cId = ?");
		preparedStatement.setInt(1, cId);
		ResultSet resultSet = preparedStatement.executeQuery();
		BookingConfirm bookingConfirm = new BookingConfirm();
		while(resultSet.next()) {
			bookingConfirm.setFullName(resultSet.getString("fullName"));
			bookingConfirm.setEmail(resultSet.getString("email"));
			bookingConfirm.setCruiseId(resultSet.getString("cruiseId"));
			bookingConfirm.setNoOfGuest(resultSet.getInt("noOfGuest"));
			bookingConfirm.setTotalPrice(resultSet.getDouble("totalPrice"));
			bookingConfirm.setCardHolderName(resultSet.getString("cardHolderName"));
			bookingConfirm.setCardNo(resultSet.getString("cardNo"));
			bookingConfirm.setExpireDate(resultSet.getString("expireDate"));
		}
	    connection.close();
	    return bookingConfirm;
	}
	
//	Total Price
	public double getTotalPrice() throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT SUM(totalPrice) FROM bookingconfirm");
		ResultSet resultSet = preparedStatement.executeQuery();
		double totalPrice = 0;
		while(resultSet.next()) {
			totalPrice = resultSet.getDouble(1);
		}
		preparedStatement.close();
		connection.close();
		return totalPrice;
	}
	
//	Get User Booking
	public List<BookingConfirm> getBookingInfo() throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT DISTINCT email, fullName\r\n"
				+ "FROM bookingconfirm");
		ResultSet resultSet = preparedStatement.executeQuery();
		
		List<BookingConfirm> list = new ArrayList<BookingConfirm>();
		while(resultSet.next()) {
			BookingConfirm bookingConfirm = new BookingConfirm();
			bookingConfirm.setFullName(resultSet.getString("fullName"));
			bookingConfirm.setEmail(resultSet.getString("email"));
			list.add(bookingConfirm);
		}
	    connection.close();
	    return list;
	}
	
	public List<BookingConfirm> getAllBooking(String email) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM bookingconfirm WHERE email = ?");
		preparedStatement.setString(1, email);
		ResultSet resultSet = preparedStatement.executeQuery();
		List<BookingConfirm> list = new ArrayList<BookingConfirm>();
		while(resultSet.next()) {
			BookingConfirm bookingConfirm = new BookingConfirm();
			bookingConfirm.setFullName(resultSet.getString("fullName"));
			bookingConfirm.setEmail(resultSet.getString("email"));
			bookingConfirm.setCruiseId(resultSet.getString("cruiseId"));
			bookingConfirm.setNoOfGuest(resultSet.getInt("noOfGuest"));
			bookingConfirm.setTotalPrice(resultSet.getDouble("totalPrice"));
			bookingConfirm.setCardHolderName(resultSet.getString("cardHolderName"));
			bookingConfirm.setCardNo(resultSet.getString("cardNo"));
			bookingConfirm.setExpireDate(resultSet.getString("expireDate"));
			list.add(bookingConfirm);
		}
	    connection.close();
	    return list;
	}
}
