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
import la.dao.PlanDAO;

@WebServlet("/PlanChoiseServlet")
public class PlanChoiseServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");
		if (action.equals("choice")) {
			HttpSession session = request.getSession(false);
			int plid = Integer.parseInt(request.getParameter("plan_id"));
			try {
				PlanDAO plan = new PlanDAO();
				HotelBean bean = plan.PlanChoice(plid);
				session.setAttribute("choice", bean);
				gotoPage(request, response, "/hotel_SelectPlan2.jsp");
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
		{
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}

	}
}
