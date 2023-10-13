package bank.Model;

public class Register {
	
	private int regNo;
	private String custName;
	private String userName;
	private String password;
	private Float accBal;
	public Register(int regNo, String custName, String userName, String password, Float accBal) {
		super();
		this.regNo = regNo;
		this.custName = custName;
		this.userName = userName;
		this.password = password;
		this.accBal = accBal;
	}
	public int getRegNo() {
		return regNo;
	}
	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Float getAccBal() {
		return accBal;
	}
	public void setAccBal(Float accBal) {
		this.accBal = accBal;
	}
	
}
