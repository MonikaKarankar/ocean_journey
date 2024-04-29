package cruisebooking.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cruisebooking.dao.Admin;

public class AdminCrud {
	UserDto dto = new UserDto();
	
	
//	Add New Admin
	public int addAdmin(Admin admin) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO adminregistration (fName, lName, email, address, dLocation, phone, adhar, idproof, position, department, password, date, time) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		preparedStatement.setString(1, admin.getfName());
		preparedStatement.setString(2, admin.getlName());
		preparedStatement.setString(3, admin.getEmail());
		preparedStatement.setString(4, admin.getAddress());
		preparedStatement.setString(5, admin.getdLocation());
		preparedStatement.setLong(6, admin.getPhone());
		preparedStatement.setLong(7, admin.getAdhar());
		preparedStatement.setString(8, admin.getIdProof());
		preparedStatement.setString(9, admin.getPosition());
		preparedStatement.setString(10, admin.getDepartment());
		preparedStatement.setString(11, admin.getPassword());
		preparedStatement.setString(12, admin.getDate());
		preparedStatement.setString(13, admin.getTime());
		
		int count = preparedStatement.executeUpdate();
		connection.close();
		return count;
		
	}
	
	
//	Admin Login
	public Admin adminLogin(String email) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM adminregistration WHERE email = ?");
		preparedStatement.setString(1, email);
		
		ResultSet resultset = preparedStatement.executeQuery();
		Admin admin = new Admin();
		while(resultset.next()) {
			admin.setPassword(resultset.getString("password"));
			admin.setEmail(resultset.getString("email"));
		}
		
		connection.close();
		return admin;
	}

	
//	Admin Information
	public Admin adminInfo(String email) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM adminregistration WHERE email = ?");
		preparedStatement.setString(1, email);
		
		ResultSet resultset = preparedStatement.executeQuery();
		Admin admin = new Admin();
		while(resultset.next()) {
			admin.setfName(resultset.getString("fName"));
			admin.setlName(resultset.getString("lName"));
			admin.setEmail(resultset.getString("email"));
			admin.setAddress(resultset.getString("address"));
			admin.setdLocation(resultset.getString("dlocation"));
			admin.setPhone(resultset.getLong("phone"));
			admin.setAdhar(resultset.getLong("adhar"));
			admin.setIdproof(resultset.getString("idProof"));
			admin.setPosition(resultset.getString("position"));
			admin.setDepartment(resultset.getString("department"));
			admin.setDate(resultset.getString("date"));
			admin.setTime(resultset.getString("time"));
		}	
		connection.close();
		return admin;
	}
	
//  Show All Admin
	
	public List<Admin> getAllAdmin() throws Exception {
	    Connection connection = dto.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM adminregistration");
	    ResultSet resultSet = preparedStatement.executeQuery();
	    
	    List<Admin> list = new ArrayList<Admin>();
	    while (resultSet.next()) {
	        Admin admin = new Admin();
	        admin.setId(resultSet.getInt("id"));
	        admin.setfName(resultSet.getString("fName"));
	        admin.setlName(resultSet.getString("lName"));
	        admin.setEmail(resultSet.getString("email"));
	        admin.setAddress(resultSet.getString("address"));
	        admin.setdLocation(resultSet.getString("dlocation"));
	        admin.setPhone(resultSet.getLong("phone"));
	        admin.setAdhar(resultSet.getLong("adhar"));
	        admin.setIdproof(resultSet.getString("idProof"));
	        admin.setPosition(resultSet.getString("position"));
	        admin.setDepartment(resultSet.getString("department"));
	        admin.setDate(resultSet.getString("date"));
	        admin.setTime(resultSet.getString("time"));    
	        list.add(admin);
	    }
	    connection.close();
	    return list;
	}
	
	public int getAdminCount() throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM adminregistration");
		ResultSet resultSet = preparedStatement.executeQuery();
		int count = 0;
		while(resultSet.next()) {
			count = resultSet.getInt(1);
		}
		preparedStatement.close();
		connection.close();
		return count;
	}

	

	

	

}
