package la.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import la.bean.HotelBean;

public class HotelDAO {
	private String url = "jdbc:postgresql:webinn";
	private String user = "webinnuser";
	private String pass = "himitu";

	public HotelDAO() throws DAOException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("JDBCドライバの登録に失敗しました。");
		}
	}

	public int saveHotel(HotelBean hotel) throws DAOException {
		int ac_id = 0;
		String ac_idsql = "SELECT nextval('plan_information_ac_id_seq')";

		try (Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement st = con.prepareStatement(ac_idsql);
				ResultSet rs = st.executeQuery();) {
			if (rs.next()) {
				ac_id = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの操作に失敗しました。");
		}

		String sql = "INSERT INTO accommodation_information(ac_id, ac_name,ac_address,ac_tel,ac_room, checkin_time, checkout_time)"
				+ " VALUES(?,?,?,?,?,?,?)";

		try (Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement st = con.prepareStatement(sql);) {

			st.setInt(1, ac_id);
			st.setString(2, hotel.getAc_name());
			
			st.setString(3, hotel.getAc_address());
			st.setString(4, hotel.getAc_tel());
			st.setInt(5, hotel.getAc_room());
			
			st.setInt(6, hotel.getCheckin_time());
			st.setInt(7, hotel.getCheckout_time());

			st.executeUpdate();

			return ac_id;

		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの操作に失敗しました。");
		}
	}
}
