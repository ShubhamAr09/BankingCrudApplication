package bank.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bank.Dao.RegisterDao;
import bank.Dao.RegisterDaoImplementation;


@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int regNo = Integer.parseInt(request.getParameter("regno"));
		 
		 RegisterDao regdao = new RegisterDaoImplementation();
		 
		 int recordsDeleted = regdao.deleteRecord(regNo);
		 
		 if(recordsDeleted > 0) {
			 request.setAttribute("deleteSuccessMessage", "Record Deleted successfully..");
		 } else {
			 request.setAttribute("deleteErrorMessage", "Failed to delete the record..");
		 }
		 
		 request.getRequestDispatcher("DeleteView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
