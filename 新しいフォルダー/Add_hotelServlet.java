package la.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import la.bean.HotelBean;
import la.dao.DAOException;
import la.dao.HotelDAO;



@WebServlet("/Add_hotelServlet")
public class Add_hotelServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			request.setCharacterEncoding("UTF-8");
			
			HotelBean bean = new HotelBean();
			
			bean.setAc_name(request.getParameter("hotel_name"));
			
			bean.setAc_address(request.getParameter("hotel_address"));
			bean.setAc_tel(request.getParameter("hotel_tel"));
			bean.setAc_Room(Integer.parseInt(request.getParameter("hotel_room")));
			
			bean.setCheckin_time(Integer.parseInt(request.getParameter("checkin_time")));
			bean.setCheckout_time(Integer.parseInt(request.getParameter("checkout_time")));

			
			
			HotelDAO reg = new HotelDAO();
			int ac_id = reg.saveHotel(bean);
			reg.saveHotel(bean);
			
			HttpSession session = request.getSession();
			session.setAttribute("hotel", bean);
			session.setAttribute("ac_id", ac_id);
			gotoPage(request,response,"/add_hotelPlanReg.jsp");
		}catch(DAOException e) {
			e.printStackTrace();
		}
	}
	private void gotoPage(HttpServletRequest request, HttpServletResponse response,String page ) throws ServletException, IOException{
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
