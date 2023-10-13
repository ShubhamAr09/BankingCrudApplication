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


@WebServlet("/updatePassController")
public class updatePassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updatePassController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Login logUser=new Login(username,password);
		RegisterDao regDao = new RegisterDaoImplementation();
		int i=regDao.updatePassword(logUser);
		if(i>0)
		{
			response.sendRedirect("LoginView.jsp");
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("UpdateMsg","Invalid Username Error !");
			response.sendRedirect("UpdatePassword.jsp");
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
