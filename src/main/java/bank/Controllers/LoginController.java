package bank.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.Dao.RegisterDao;
import bank.Dao.RegisterDaoImplementation;
import bank.Model.Login;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		
		Login lobj = new Login(username, password);
		RegisterDao regdao = new RegisterDaoImplementation();
		boolean b = regdao.validateUser(lobj);
		System.out.println(b);
		
		if(b) {
			HttpSession session = request.getSession();
			session.setAttribute("message", "login Succcessfull");
			response.sendRedirect("Home.html");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("errorMessage", "Wrong username or password entered");
		    response.sendRedirect("LoginView.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
