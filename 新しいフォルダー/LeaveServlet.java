package la.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import la.dao.LeaveDAO;

@WebServlet("/LeaveServlet")
public class LeaveServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			LeaveDAO leave = new LeaveDAO();
			String action = request.getParameter("action");
			if (action.equals("leave")) {
				String name = request.getParameter("name");
				int login_id = Integer.parseInt(request.getParameter("liginID"));
				String password = request.getParameter("password");
				leave.Updateinfo(name, login_id, password);
				gotoPage(request, response, "/top.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
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
