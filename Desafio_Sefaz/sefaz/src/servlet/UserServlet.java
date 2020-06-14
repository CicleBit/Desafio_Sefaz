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
@WebServlet("/SaveUser")//Mapeamento do servlet
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DaoUser daoUser = new DaoUser();
	
    public UserServlet() {
        super();     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		BeansSefaz user = new BeansSefaz();
		
		user.setLogin(login);
		user.setPassword(password);
		
		daoUser.Save(user);
		
		try {
			RequestDispatcher view = request.getRequestDispatcher("/cadastrousuario.jsp");
			request.setAttribute("users", daoUser.listUsers());
			view.forward(request, response); 
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
