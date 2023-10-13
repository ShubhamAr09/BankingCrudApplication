package bank.Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bank.Dao.RegisterDao;
import bank.Dao.RegisterDaoImplementation;
import bank.Model.Register;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int regNo = Integer.parseInt(request.getParameter("regno"));
		String custName = request.getParameter("custname");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		Float accBal = Float.parseFloat(request.getParameter("accbal"));
		
		Register regobj = new Register(regNo, custName, userName, password, accBal);
		RegisterDao regdao = new RegisterDaoImplementation();
		List<Register> lstreg = new ArrayList<Register>();
		lstreg.add(regobj);
		int i = regdao.createRecord(lstreg);
		if(i>0) {
			response.sendRedirect("LoginView.jsp");
		} else {
			response.sendRedirect("Error.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
