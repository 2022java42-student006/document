package la.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import la.bean.HotelBean;
import la.dao.DAOException;
import la.dao.PlanDAO;

@WebServlet("/SearchPlanServlet")
public class SearchPlanServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");
		if (action.equals("hotel")) {
			HttpSession session = request.getSession(false);
			int acid = Integer.parseInt(request.getParameter("acid"));
			try {
				PlanDAO plan = new PlanDAO();
				HotelBean bean = plan.HotelInfo(acid);
				List<HotelBean> list = new ArrayList<HotelBean>();
				list = plan.PlanInfo(acid);
				session.setAttribute("acc", bean);
				session.setAttribute("acc_plan", list);
				gotoPage(request, response, "/hotel_SelectPlan1.jsp");
			} catch (DAOException e) {
				e.printStackTrace();

			}

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	protected void gotoPage(HttpServletRequest request, HttpServletResponse response, String page)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);

	}
}
