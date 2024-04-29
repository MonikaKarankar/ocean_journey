package cruisebooking.dao;

public class CruiseStaff {
	
	private int id;
	private String fName;
	private String lName;
	private long phone;
	private String address;
	private String poiletId;
	private String state;
	private String email;
	private String position;
	private int age;
	private long adhar;
	private String company;
	private String joinDate;
	private double salary;
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
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPoiletId() {
		return poiletId;
	}
	public void setPoiletId(String poiletId) {
		this.poiletId = poiletId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public long getAdhar() {
		return adhar;
	}
	public void setAdhar(long adhar) {
		this.adhar = adhar;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	
	
	@Override
	public String toString() {
		return "CruiseStaff [id=" + id + ", fName=" + fName + ", lName=" + lName + ", phone=" + phone + ", address="
				+ address + ", poiletId=" + poiletId + ", state=" + state + ", email=" + email + ", position="
				+ position + ", age=" + age + ", adhar=" + adhar + ", company=" + company + ", joinDate=" + joinDate
				+ ", salary=" + salary + "]";
	}
	
	
	
	
	
	
	
	

}
