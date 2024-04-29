package cruisebooking.dao;

public class Admin {
	
	private int id;
	private String fName;
	private String lName;
	private String email;
	private String address;
	private String dLocation;
	private long phone;
	private long adhar;
	private String idProof;
	private String position;
	private String department;
	private String password;
	private String date;
	private String time;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getdLocation() {
		return dLocation;
	}
	public void setdLocation(String dLocation) {
		this.dLocation = dLocation;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public long getAdhar() {
		return adhar;
	}
	public void setAdhar(long adhar) {
		this.adhar = adhar;
	}
	public String getIdProof() {
		return idProof;
	}
	public void setIdproof(String idProof) {
		this.idProof = idProof;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	@Override
	public String toString() {
		return "Admin [id=" + id + ", fName=" + fName + ", lName=" + lName + ", address=" + address + ", dLocation="
				+ dLocation + ", phone=" + phone + ", adhar=" + adhar + ", idProof=" + idProof + ", position="
				+ position + ", department=" + department + ", password=" + password + ", date=" + date + ", time="
				+ time + "]";
	}
	
	
	
	
	

}
