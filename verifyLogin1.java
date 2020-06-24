package g;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class verifyLogin1 extends HttpServlet {
	public static int accountno;
	public static long seconds;
	public static String username;
	private static final Logger _log = LogManager.getLogger(verifyLogin1.class);
	public static boolean m;

	public static boolean checkLogin(String username, String password, int accountno) {

		boolean status = false;
		Connection con = GetCon.getCon();

		try {
			java.sql.Statement st = con.createStatement();
			String query = "Select * from NEW1 Where accountno='" + accountno + "' and username='" + username
					+ "' and password='" + password + "'";
			System.out.println("Query : " + query);
			System.out.printf(query);
			ResultSet res = st.executeQuery(query);
			System.out.println("Results" + res);
			status = res.next();
		} catch (Exception e) {
			_log.error(e);
		}
		return status;
	}

// let us do sql injection with password
	public static List<AccountDetail> checkAccountDeatils(String accountno) {
// accountno is enought since already logged in yes sir
//		System.out.println(" checkAccountDeatils" + " " + password);
		boolean status = false;
		Connection con = GetCon.getCon();

		try {
			java.sql.Statement st = con.createStatement();
			String query = "Select * from NEW1 Where accountno=" + accountno;
			System.out.println("QRY =" + query);

			System.out.println("Query : " + query);
			System.out.printf(query);
			ResultSet res = st.executeQuery(query);
			System.out.println("Results" + res);
//			status = res.next();

			System.out.println("in body");

			// here im using only first row //sir if i want all the values should i put in
			// while loop or what changes should i do sir?while loop only while(rs.next)
			// sir?es yes
			// can u set them proper yes sir //like this sir?

			// need to use array ///

			List<AccountDetail> list = new ArrayList<>();
			while (res.next()) {
				AccountDetail ad = new AccountDetail();

//now return thisobject  instead of boolean vlues
				ad.setAccountNo(res.getInt(1));
				ad.setAmmount(res.getString(5));
				ad.setName(res.getString(2));
				ad.setContactNo(res.getString(7));

				list.add(ad);
				System.out.println(ad);

			}
			System.out.println("Size " + list.size());
			return list;

			// initially u can the count and if count==1 then its valid else sql injected --
			// like if we have to show sql injection in application by printing the username
			// then how should we show that sir
			// so

		} catch (Exception e) {
			_log.error(e);

		}
		return null; // means not pre
	}

	public static boolean checkBalanceDetails(int accountno, String password) {
		System.out.println("check bala entered ");
		boolean status1 = false;
		Connection con = GetCon.getCon();

		try {
			java.sql.Statement st = con.createStatement();
			String query = "Select * from NEW1 Where accountno='" + accountno + "' and password='" + password + "'";
			System.out.println("Query : " + query);
			System.out.printf(query);
			ResultSet res = st.executeQuery(query);
			System.out.println("Results" + res);
			status1 = res.next();// ac details?? we need to print all details of the user
			// plz change data type
			if (res.next()) {
				AccountDetail ad = new AccountDetail();

				ad.setAccountNo(res.getInt(1));
				ad.setAmmount(res.getString(2));
				ad.setContactNo(res.getString(3));

				System.out.println(ad);
			}
/// can u run now?

		} catch (Exception e) {
			_log.error(e);
		}
		return status1;
	}

}