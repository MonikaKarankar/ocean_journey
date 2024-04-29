package cruisebooking.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.PartialResultException;

import cruisebooking.dao.CreateCruise;

public class CreateCruiseCrud {
	
	UserDto dto = new UserDto();
	
//	Inset Cruise
	public int createCruise(CreateCruise createCruise) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO createcruise(cruiseId, poiletId,"
				+ "departureLocation, departureDate, departureDay, destinationLocation, destinationDate, destinationDay, time, price) VALUES(?,?,?,?,?,?,?,?,?,?)");
		
		preparedStatement.setString(1, createCruise.getCruiseId());
		preparedStatement.setString(2, createCruise.getPoiletId());
		preparedStatement.setString(3, createCruise.getDepartureLocation());
		preparedStatement.setString(4, createCruise.getDepartureDate());
		preparedStatement.setString(5, createCruise.getDepartureDay());
		preparedStatement.setString(6, createCruise.getDestinationLocation());
		preparedStatement.setString(7, createCruise.getDestinationDate());
		preparedStatement.setString(8, createCruise.getDestinationDay());
		preparedStatement.setString(9, createCruise.getTime());
		preparedStatement.setDouble(10, createCruise.getPrice());
		
		int count = preparedStatement.executeUpdate();
		connection.close();
		return count;		
	}
	
	
//	GetAllCruise
	public List<CreateCruise> getAllCruiseInfo() throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM createcruise");
		List<CreateCruise> list = new ArrayList<CreateCruise>();
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next()) {
			CreateCruise createCruise = new CreateCruise();
			createCruise.setId(resultSet.getInt("id"));
			createCruise.setCruiseId(resultSet.getString("cruiseId"));
			createCruise.setPoiletId(resultSet.getString("poiletId"));
			createCruise.setDepartureLocation(resultSet.getString("departureLocation"));
			createCruise.setDepartureDate(resultSet.getString("departureDate"));
			createCruise.setDepartureDay(resultSet.getString("departureDay"));
			createCruise.setDestinationLocation(resultSet.getString("destinationLocation"));
			createCruise.setDestinationDate(resultSet.getString("destinationDate"));
			createCruise.setDestinationDay(resultSet.getString("destinationDay"));
			createCruise.setTime(resultSet.getString("time"));
			createCruise.setPrice(resultSet.getDouble("price"));
			list.add(createCruise);
		}
		preparedStatement.close();
		connection.close();
		return list;
	}
	
	
//	Get Cruise By ID
	public CreateCruise getCruiseInfo(int id) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM createcruise WHERE id = ?");
		preparedStatement.setInt(1, id);
		ResultSet resultSet = preparedStatement.executeQuery();
		CreateCruise createCruise = new CreateCruise();
		while(resultSet.next()) {	
			createCruise.setCruiseId(resultSet.getString("cruiseId"));
			createCruise.setPoiletId(resultSet.getString("poiletId"));
			createCruise.setDepartureLocation(resultSet.getString("departureLocation"));
			createCruise.setDepartureDate(resultSet.getString("departureDate"));
			createCruise.setDepartureDay(resultSet.getString("departureDay"));
			createCruise.setDestinationLocation(resultSet.getString("destinationLocation"));
			createCruise.setDestinationDate(resultSet.getString("destinationDate"));
			createCruise.setDestinationDay(resultSet.getString("destinationDay"));
			createCruise.setTime(resultSet.getString("time"));
			createCruise.setPrice(resultSet.getDouble("price"));
			createCruise.setId(resultSet.getInt("id"));
		}
		connection.close();
		return createCruise;
	}

	public CreateCruise getCruise(String cruiseId) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM createcruise WHERE cruiseId = ?");
		preparedStatement.setString(1, cruiseId);
		ResultSet resultSet = preparedStatement.executeQuery();
		CreateCruise createCruise = new CreateCruise();
		while(resultSet.next()) {	
			
			createCruise.setPoiletId(resultSet.getString("poiletId"));
			createCruise.setDepartureLocation(resultSet.getString("departureLocation"));
			createCruise.setDepartureDate(resultSet.getString("departureDate"));
			createCruise.setDepartureDay(resultSet.getString("departureDay"));
			createCruise.setDestinationLocation(resultSet.getString("destinationLocation"));
			createCruise.setDestinationDate(resultSet.getString("destinationDate"));
			createCruise.setDestinationDay(resultSet.getString("destinationDay"));
			createCruise.setTime(resultSet.getString("time"));
			createCruise.setPrice(resultSet.getDouble("price"));
			createCruise.setCruiseId(resultSet.getString("cruiseId"));
		}
		connection.close();
		return createCruise;
	}
	
	public int cruiseDeleted(int id) throws Exception {
		Connection connection = dto.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM createcruise WHERE id = ?");
		preparedStatement.setInt(1, id);
		int count = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return count;
	}

}
