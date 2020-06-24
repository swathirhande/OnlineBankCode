package g;

//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;

public class UserDetails {
	// private static final Logger _log = LogManager.getLogger(UserDetails.class);
	public String username;
	public String password;
	public int accNo;

	public UserDetails(String username, String password, int accountno) {
		accNo = accountno;
		this.username = username;
		this.password = password;

	}

	public UserDetails() {
	}

	public String getUsername() {
		return username;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accountno) {
		accNo = accountno;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {

		return "UserDetails [username=" + username + ", password=" + password + "]";
	}
}
