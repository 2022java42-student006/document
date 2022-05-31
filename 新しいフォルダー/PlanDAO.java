package la.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import la.bean.HotelBean;

public class PlanDAO {
	private String url = "jdbc:postgresql:webinn";
	private String user = "webinnuser";
	private String pass = "himitu";

	public PlanDAO() throws DAOException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("ドライバの登録に失敗しました。");
		}
	}

	public HotelBean HotelInfo(int ac_id) throws DAOException {
		String sql = "SELECT * FROM accommodation_information WHERE ac_id = ?";
		try (Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement ps = con.prepareStatement(sql);) {
			ps.setInt(1, ac_id);
			try (ResultSet rs = ps.executeQuery();) {
				if (rs.next()) {
					int Ac_id = rs.getInt("ac_id");
					String ac_name = rs.getString("ac_name");
					String ac_address = rs.getString("ac_address");
					String ac_tel = rs.getString("ac_tel");
					int intime = rs.getInt("checkin_time");
					int outtime = rs.getInt("checkout_time");
					HotelBean bean = new HotelBean(Ac_id, ac_name, ac_address, ac_tel, intime, outtime);
					return bean;
				} else {
					return null;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの取得に失敗しました。");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの取得に失敗しました。");
		}

	}

	public List<HotelBean> PlanInfo(int ac_id) throws DAOException {
		String sql = "SELECT * FROM plan_information WHERE ac_id = ?";
		try (Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement ps = con.prepareStatement(sql);) {
			ps.setInt(1, ac_id);
			try (ResultSet rs = ps.executeQuery();) {
				List<HotelBean> list = new ArrayList<HotelBean>();
				while (rs.next()) {
					int Planid = rs.getInt("plan_id");
					int Acid = rs.getInt("ac_id");
					String PlanName = rs.getString("plan_name");
					String PlanSub = rs.getString("plan_sub");
					int price = rs.getInt("price");
					int room_num = rs.getInt("room_num");
					HotelBean bean = new HotelBean(Planid, Acid, PlanName, PlanSub, price, room_num);
					list.add(bean);
				}
				return list;
			} catch (SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの取得に失敗しました。");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの取得に失敗しました。");
		}
	}

	public HotelBean PlanChoice(int plan_id) throws DAOException {
		String sql = "SELECT ac.ac_name,ac.ac_address,pl.plan_name,pl.plan_sub,pl.price FROM plan_information pl INNER JOIN accommodation_information ac ON pl.ac_id = ac.ac_id WHERE plan_id = ? ";
		try (Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement st = con.prepareStatement(sql);) {
			st.setInt(1, plan_id);
			try (ResultSet rs = st.executeQuery();) {
				if (rs.next()) {
					String acname = rs.getString("ac_name");
					String acadd = rs.getString("ac_address");
					String plname = rs.getString("plan_name");
					String plsub = rs.getString("plan_sub");
					int price = rs.getInt("price");
					HotelBean bean = new HotelBean(acname, acadd, plname, plsub, price);
					return bean;
				}
				return null;
			} catch (SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの取得に失敗しました。");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの取得に失敗しました。");
		}
		
	}
}
