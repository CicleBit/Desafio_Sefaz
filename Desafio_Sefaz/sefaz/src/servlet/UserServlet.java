package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeansSefaz;
import dao.DaoUser;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/SaveUser") // Mapeamento do servlet
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoUser daoUser = new DaoUser();

	public UserServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String action = request.getParameter("action");
			String user = request.getParameter("user");

			if (action.equalsIgnoreCase("delete")) {// Delet user
				daoUser.delete(user);
				RequestDispatcher view = request.getRequestDispatcher("/cadastrousuario.jsp");
				request.setAttribute("users", daoUser.listUsers());
				view.forward(request, response);

			} else if (action.equalsIgnoreCase("edit")) {// Edit user
				BeansSefaz beanSefaz = daoUser.Consult(user);
				RequestDispatcher view = request.getRequestDispatcher("/cadastrousuario.jsp");
				request.setAttribute("user", beanSefaz);
				view.forward(request, response);
			}else if(action.equalsIgnoreCase("listallusers")) {
				RequestDispatcher view = request.getRequestDispatcher("/cadastrousuario.jsp");
				request.setAttribute("users", daoUser.listUsers());
				view.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String email = request.getParameter("email");

		BeansSefaz user = new BeansSefaz();
		user.setId(!id.isEmpty() ? Long.parseLong(id) : 0);
		user.setLogin(login);
		user.setPassword(password);
		user.setEmail(email);

		if (id == null || id.isEmpty()) {
			daoUser.Save(user);
		} else {
			daoUser.UpdatedStats(user);
		}

		try {
			RequestDispatcher view = request.getRequestDispatcher("/cadastrousuario.jsp");
			request.setAttribute("users", daoUser.listUsers());
			view.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
