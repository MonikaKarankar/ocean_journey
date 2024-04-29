package cruisebooking.dao;

import java.util.Arrays;

public class CreateCruise {
	private int id;
	private String cruiseId;
	private String poiletId;
	private String departureLocation;
	private String departureDate;
	private String departureDay;
	private String destinationLocation;	
	private String destinationDate;
	private String destinationDay;
	private String time;
	private double price;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCruiseId() {
		return cruiseId;
	}
	public void setCruiseId(String cruiseId) {
		this.cruiseId = cruiseId;
	}
	public String getPoiletId() {
		return poiletId;
	}
	public void setPoiletId(String poiletId) {
		this.poiletId = poiletId;
	}
	public String getDepartureLocation() {
		return departureLocation;
	}
	public void setDepartureLocation(String departureLocation) {
		this.departureLocation = departureLocation;
	}
	public String getDepartureDate() {
		return departureDate;
	}
	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}
	public String getDepartureDay() {
		return departureDay;
	}
	public void setDepartureDay(String departureDay) {
		this.departureDay = departureDay;
	}
	public String getDestinationLocation() {
		return destinationLocation;
	}
	public void setDestinationLocation(String destinationLocation) {
		this.destinationLocation = destinationLocation;
	}
	public String getDestinationDate() {
		return destinationDate;
	}
	public void setDestinationDate(String destinationDate) {
		this.destinationDate = destinationDate;
	}
	public String getDestinationDay() {
		return destinationDay;
	}
	public void setDestinationDay(String destinationDay) {
		this.destinationDay = destinationDay;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "CreateCruise [id=" + id + ", cruiseId=" + cruiseId + ", poiletId=" + poiletId + ", departureLocation="
				+ departureLocation + ", departureDate=" + departureDate + ", departureDay=" + departureDay
				+ ", destinationLocation=" + destinationLocation + ", destinationDate=" + destinationDate
				+ ", destinationDay=" + destinationDay + ", time=" + time + ", price=" + price + "]";
	}	
}
