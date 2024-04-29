package cruisebooking.dao;

public class UserDao {
	
	private int id;
	private String fullName;
	private String date;
	private String email;
	private long phone;
	private String gender;
	private String occupation;
	private String idType;
	private String idNumber;
	private String issuedState;
	private String address;
	private String nationality;
	private String state;
	private String district;
	private int houseNumber;
	private String laneNumber;
	private String password;
	private String confirmPassword;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getIdType() {
		return idType;
	}
	public void setIdType(String idType) {
		this.idType = idType;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getIssuedState() {
		return issuedState;
	}
	public void setIssuedState(String issuedState) {
		this.issuedState = issuedState;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public int getHouseNumber() {
		return houseNumber;
	}
	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}
	public String getLaneNumber() {
		return laneNumber;
	}
	public void setLaneNumber(String laneNumber) {
		this.laneNumber = laneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	@Override
	public String toString() {
		return "UserDao [id=" + id + ", fullName=" + fullName + ", date=" + date + ", email=" + email + ", phone="
				+ phone + ", gender=" + gender + ", occupation=" + occupation + ", idType=" + idType + ", idNumber="
				+ idNumber + ", issuedState=" + issuedState + ", address=" + address + ", nationality=" + nationality
				+ ", state=" + state + ", district=" + district + ", houseNumber=" + houseNumber + ", laneNumber="
				+ laneNumber + ", password=" + password + ", confirmPassword=" + confirmPassword + "]";
	}
	
	
	
	
	
	
	
	
	

}
