package cruisebooking.dao;

import java.util.List;

public class Cruise {
	
	private int id;
	private String cruiseName;
	private String cruiseId;
	private String ownerName;
	private String[] classType;
	private double size;
	private double speed;
	private int passengerCapacity;
	private int baggageCapacity;
	private int totalCapacity;
	private String joinDate;
	private String time;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCruiseName() {
		return cruiseName;
	}
	public void setCruiseName(String cruiseName) {
		this.cruiseName = cruiseName;
	}
	public String getCruiseId() {
		return cruiseId;
	}
	public void setCruiseId(String cruiseId) {
		this.cruiseId = cruiseId;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String[] getClassType() {
		return classType;
	}
	public void setClassType(String[] classType) {
		this.classType = classType;
	}
	public double getSize() {
		return size;
	}
	public void setSize(double size) {
		this.size = size;
	}
	public double getSpeed() {
		return speed;
	}
	public void setSpeed(double speed) {
		this.speed = speed;
	}
	public int getPassengerCapacity() {
		return passengerCapacity;
	}
	public void setPassengerCapacity(int passengerCapacity) {
		this.passengerCapacity = passengerCapacity;
	}
	public int getBaggageCapacity() {
		return baggageCapacity;
	}
	public void setBaggageCapacity(int baggageCapacity) {
		this.baggageCapacity = baggageCapacity;
	}
	public int getTotalCapacity() {
		return totalCapacity;
	}
	public void setTotalCapacity(int totalCapacity) {
		this.totalCapacity = totalCapacity;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	@Override
	public String toString() {
		return "Cruise [id=" + id + ", cruiseName=" + cruiseName + ", cruiseId=" + cruiseId + ", ownerName=" + ownerName
				+ ", classType=" + classType + ", size=" + size + ", speed=" + speed + ", passengerCapacity="
				+ passengerCapacity + ", baggageCapacity=" + baggageCapacity + ", totalCapacity=" + totalCapacity
				+ ", joinDate=" + joinDate + ", time=" + time + "]";
	}
	
	
	
	
	
	
	

}
