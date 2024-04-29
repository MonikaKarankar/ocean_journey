package cruisebooking.dao;

public class BookingConfirm {
	
	private int id;
	private String fullName;
	private String email;
	private String cruiseId;
	private int noOfGuest;
	private double totalPrice;
	private String cardHolderName;
	private String cardNo;
	private String expireDate;
	private int cId;
	
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCruiseId() {
		return cruiseId;
	}
	public void setCruiseId(String cruiseId) {
		this.cruiseId = cruiseId;
	}
	public int getNoOfGuest() {
		return noOfGuest;
	}
	public void setNoOfGuest(int noOfGuest) {
		this.noOfGuest = noOfGuest;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getCardHolderName() {
		return cardHolderName;
	}
	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	
	@Override
	public String toString() {
		return "BookingConfirm [id=" + id + ", fullName=" + fullName + ", email=" + email + ", cruiseId=" + cruiseId
				+ ", noOfGuest=" + noOfGuest + ", totalPrice=" + totalPrice + ", cardHolderName=" + cardHolderName
				+ ", cardNo=" + cardNo + ", expireDate=" + expireDate + "]";
	}
	
	
}
