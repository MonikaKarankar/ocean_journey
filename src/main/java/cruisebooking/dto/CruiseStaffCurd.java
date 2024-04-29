package cruisebooking.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import cruisebooking.dao.Cruise;
import cruisebooking.dao.CruiseStaff;

public class CruiseStaffCurd {
	
	UserDto dto = new UserDto();
	
	// Cruise Staff Insert
	public int cruiseStaff(CruiseStaff cruiseStaff) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement= connection.prepareStatement("INSERT INTO cruisestaff(fName, lName, phone, address, poiletId, state, "
				+ "email, position, age, adhar, company, joinDate, salary) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		preparedStatement.setString(1, cruiseStaff.getfName());
		preparedStatement.setString(2, cruiseStaff.getlName());
		preparedStatement.setLong(3, cruiseStaff.getPhone());
		preparedStatement.setString(4, cruiseStaff.getAddress());
		preparedStatement.setString(5, cruiseStaff.getPoiletId());
		preparedStatement.setString(6, cruiseStaff.getState());
		preparedStatement.setString(7, cruiseStaff.getEmail());
		preparedStatement.setString(8, cruiseStaff.getPosition());
		preparedStatement.setInt(9, cruiseStaff.getAge());
		preparedStatement.setLong(10, cruiseStaff.getAdhar());
		preparedStatement.setString(11, cruiseStaff.getCompany());
		preparedStatement.setString(12, cruiseStaff.getJoinDate());
		preparedStatement.setDouble(13, cruiseStaff.getSalary());
		
		int count = preparedStatement.executeUpdate();
		connection.close();
		return count;		
	}
	
//  Display All CruiseStaff
	
	public List<CruiseStaff> getAllCruiseStaff() throws Exception {
	    Connection connection = dto.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM cruisestaff");
	    ResultSet resultSet = preparedStatement.executeQuery();
	    List<CruiseStaff> list = new ArrayList<CruiseStaff>();
	    while(resultSet.next()) {
	        CruiseStaff cruise = new CruiseStaff(); // Create a new CruiseStaff object for each record
	        cruise.setId(resultSet.getInt("id"));
	        cruise.setfName(resultSet.getString("fName"));
	        cruise.setlName(resultSet.getString("lName"));
	        cruise.setPhone(resultSet.getLong("phone"));
	        cruise.setAddress(resultSet.getString("address"));
	        cruise.setPoiletId(resultSet.getString("poiletId"));
	        cruise.setState(resultSet.getString("state"));
	        cruise.setEmail(resultSet.getString("email"));
	        cruise.setPosition(resultSet.getString("position"));
	        cruise.setAge(resultSet.getInt("age"));
	        cruise.setAdhar(resultSet.getLong("adhar"));
	        cruise.setCompany(resultSet.getString("company"));
	        cruise.setJoinDate(resultSet.getString("joinDate"));
	        cruise.setSalary(resultSet.getLong("salary"));
	        list.add(cruise);
	    }
	    preparedStatement.close();
	    return list;
	}
	
//	Update Cruise Staff
	public int updateCruiseStaff(CruiseStaff cruiseStaff) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("UPDATE cruisestaff SET fName = ?, lName = ?, phone = ?, address = ?, "
				+ "state = ?, email = ?, position = ?, age = ?, adhar= ?, company = ?, joinDate = ?, salary =? WHERE poiletId = ?");
		preparedStatement.setString(1, cruiseStaff.getfName());
		preparedStatement.setString(2, cruiseStaff.getlName());
		preparedStatement.setLong(3, cruiseStaff.getPhone());
		preparedStatement.setString(4, cruiseStaff.getAddress());
		preparedStatement.setString(5, cruiseStaff.getState());
		preparedStatement.setString(6, cruiseStaff.getEmail());
		preparedStatement.setString(7, cruiseStaff.getPosition());
		preparedStatement.setInt(8, cruiseStaff.getAge());
		preparedStatement.setLong(9, cruiseStaff.getAdhar());
		preparedStatement.setString(10, cruiseStaff.getCompany());
		preparedStatement.setString(11, cruiseStaff.getJoinDate());
		preparedStatement.setDouble(12, cruiseStaff.getSalary());
		preparedStatement.setString(13, cruiseStaff.getPoiletId());
		
		int count = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return count;
	}
	
//	Delete Cruise Satff
	public int deleteCruiseStaff(String poiletId) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM cruisestaff WHERE poiletId = ?");
		preparedStatement.setString(1, poiletId);
		int count = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return count;
	}
	
//	get Staff
	public int getStaffCount() throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM cruisestaff");
		ResultSet resultSet = preparedStatement.executeQuery();
		int count = 0;
		while(resultSet.next()) {
			count = resultSet.getInt(1);
		}
		preparedStatement.close();
		connection.close();
		return count;	
	}
	
//	Get Poilet
	public int getPoiletCount() throws Exception{
		Connection connection =dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM cruisestaff WHERE position = 'poilet'");
		ResultSet resultSet = preparedStatement.executeQuery();
		int count = 0;
		while(resultSet.next()) {
			count = resultSet.getInt(1);
		}
		preparedStatement.close();
		connection.close();
		return count;
	}
	
//	get ManagerCount
	public int getManagerCount() throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) FROM cruisestaff WHERE position = 'manager'");
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
