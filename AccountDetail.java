package g;

public class AccountDetail {

	
	private int accountNo;
	private String ammount;
	private String name;
	private String contactNo;

	private String errorDetails; 

	public String getErrorDetails() {
		return errorDetails;
	}

	public void setErrorDetails(String errorDetails) {
		this.errorDetails = errorDetails;
	}

	public int getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}

	public String getAmmount() {
		return ammount;
	}

	public void setAmmount(String ammount) {
		this.ammount = ammount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	@Override
	public String toString() {
		return "AccountDetail [accountNo=" + accountNo + ", ammount=" + ammount + ", name=" + name + ", contactNo="
				+ contactNo + "]";
	}

	

}
