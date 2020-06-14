package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import beans.BeansSefaz;
import dao.DaoLogin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private DaoLogin daoLogin = new DaoLogin();
	
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//BeansSefaz beansefaz = new BeansSefaz();
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		if(daoLogin.ValidateLoginAndPassword(login, password)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("acessgrantedpage.jsp");
			dispatcher.forward(request, response);
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("acessdeniedpage.jsp");
				dispatcher.forward(request, response);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		
	}

}
