package cruisebooking.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import cruisebooking.dao.Cruise;

public class CruiseCrud {
	
	UserDto dto = new UserDto();
	
//	Add Cruise Info
	public int cruiseInfo(Cruise cruise) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement= connection.prepareStatement("INSERT INTO cruiseinfo (cruiseName, cruiseId,ownerName,classType,size,speed,passengerCapacity,baggageCapacity,totalCapacity,joinDate,time) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
	    preparedStatement.setString(1, cruise.getCruiseName());
	    preparedStatement.setString(2, cruise.getCruiseId());
	    preparedStatement.setString(3, cruise.getOwnerName());
	    String classType = String.join(",", cruise.getClassType());
	    preparedStatement.setString(4, classType);    
	    preparedStatement.setDouble(5, cruise.getSize());
	    preparedStatement.setDouble(6, cruise.getSpeed());
	    preparedStatement.setInt(7, cruise.getPassengerCapacity());
	    preparedStatement.setInt(8, cruise.getBaggageCapacity());
	    preparedStatement.setInt(9, cruise.getTotalCapacity());
	    preparedStatement.setString(10, cruise.getJoinDate());
	    preparedStatement.setString(11, cruise.getTime());
	    
	    preparedStatement.executeBatch();
		int count = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return count;
	    
	}
	
//	Display Cruise Info
	
	public List<Cruise> getAllCruise() throws Exception {
	    Connection connection = dto.getConnection();
	    PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM cruiseinfo");
	    ResultSet resultSet = preparedStatement.executeQuery();
	    List<Cruise> list = new ArrayList<Cruise>();
	    while(resultSet.next()) {
	        Cruise cruise = new Cruise(); 
	        cruise.setId(resultSet.getInt("Id"));
	        cruise.setCruiseName(resultSet.getString("cruiseName"));
			cruise.setCruiseId(resultSet.getString("cruiseId"));
			cruise.setOwnerName(resultSet.getString("ownerName"));
			String[] classTypes = resultSet.getString("classType").split(","); // Assuming class types are comma-separated
			cruise.setClassType(classTypes);
			cruise.setSize(resultSet.getDouble("size"));
			cruise.setSpeed(resultSet.getDouble("speed"));
			cruise.setPassengerCapacity(resultSet.getInt("passengerCapacity"));
			cruise.setBaggageCapacity(resultSet.getInt("baggageCapacity"));
			cruise.setTotalCapacity(resultSet.getInt("totalCapacity"));
			cruise.setJoinDate(resultSet.getString("joinDate"));
			cruise.setTime(resultSet.getString("time"));
			list.add(cruise);
	    }
	    preparedStatement.close();
	    return list;
	}
	
//	update Cruise
	public int updateCruise(Cruise cruise) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("UPDATE cruiseinfo SET cruiseName = ?, ownerName= ?,"
				+ "size = ?, speed = ?, passengerCapacity = ?, baggageCapacity = ?, totalCapacity = ?, joinDate = ?, time = ? where cruiseId = ?");
		preparedStatement.setString(1, cruise.getCruiseName());	
		preparedStatement.setString(2, cruise.getOwnerName());
	    preparedStatement.setDouble(3, cruise.getSize());
	    preparedStatement.setDouble(4, cruise.getSpeed());
	    preparedStatement.setInt(5, cruise.getPassengerCapacity());
	    preparedStatement.setInt(6, cruise.getBaggageCapacity());
	    preparedStatement.setInt(7, cruise.getTotalCapacity());
	    preparedStatement.setString(8, cruise.getJoinDate());
	    preparedStatement.setString(9, cruise.getTime());
	    preparedStatement.setString(10, cruise.getCruiseId());
	    
	    int count = preparedStatement.executeUpdate();
	    preparedStatement.close();
	    connection.close();
	    return count;
	}
	
//	Delete cruise
	public int deleteCruise(String cruiseId) throws Exception {
		Connection connection =dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM cruiseinfo WHERE cruiseId = ?");
		preparedStatement.setString(1, cruiseId);
		int count = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return count;
	}



}
