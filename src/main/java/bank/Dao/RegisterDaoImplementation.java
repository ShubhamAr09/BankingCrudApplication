package bank.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


import bank.Model.Login;
import bank.Model.Register;
import bank.db.dbConnection;

public class RegisterDaoImplementation implements RegisterDao {
	
	dbConnection dbconn = new dbConnection();

	@Override
	public int createRecord(List<Register> lst) {
		// TODO Auto-generated method stub
		
		Register regobj = lst.get(0);
		int i = 0;
		Connection con = null;
		
		try {
			con = dbConnection.getDbConnection();
			PreparedStatement pstate = con.prepareStatement("insert into registerBank values(?,?,?,?,?)");
			pstate.setInt(1, regobj.getRegNo());
			pstate.setString(2, regobj.getCustName());
			pstate.setString(3, regobj.getUserName());
			pstate.setString(4, regobj.getPassword());
			pstate.setFloat(5, regobj.getAccBal());
			
			i = pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}

	@Override
	public List<Register> retrieveRecord(int regNo) {
		
		Connection con  = dbConnection.getDbConnection();
		List<Register> lstreg = null;
		
		try {
			PreparedStatement pstate = con.prepareStatement("select * from registerBank where regno=?");
			pstate.setInt(1, regNo);
			ResultSet result = pstate.executeQuery();
			if(result.next()) {
				lstreg = new ArrayList<Register>();
				Register regobj = new Register(result.getInt(1), result.getString(2), result.getString(3), result.getString(4), result.getFloat(5));
				lstreg.add(regobj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(con!=null) {
					con.close();
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return lstreg;
	}

	@Override
	public int deleteRecord(int regNo) {
		
		int recordsDeleted = 0;
		Connection con = null;
		
		try {
			con = dbConnection.getDbConnection();
			PreparedStatement pstate = con.prepareStatement("DELETE FROM registerBank WHERE regno = ?");
			pstate.setInt(1, regNo);
			recordsDeleted = pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(con!=null) {
					con.close();
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return recordsDeleted;
	}

	@Override
	public List<Register> retieveAllRecords() {
		
	
		Connection con=dbConnection.getDbConnection();
		ResultSet result=null;
		Statement state=null;
		List<Register> reglst=null;
		String str="Select * from registerBank";
		try {
			 state=con.createStatement();
			 result=state.executeQuery(str);
			  reglst=new ArrayList<Register>();
			 while(result.next())
			 {
				 reglst.add(new Register(result.getInt(1),result.getString(2),result.getString(3),result.getString(4),result.getFloat(5)));
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return reglst;
	}

	@Override
	public boolean validateUser(Login reg) {
		boolean b = false;
		Connection con = null;
		
		try {
			con = dbConnection.getDbConnection();
			PreparedStatement pstate = con.prepareStatement("select * from registerBank where username = ? and password = ?");
			pstate.setString(1, reg.getUserName());
			pstate.setString(2, reg.getPassword());
			ResultSet result = pstate.executeQuery();
			if(result.next()) {
				b = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}

	@Override
	public int updatePassword(Login lobj) {
		int i=0;
		Connection con=dbConnection.getDbConnection();
		PreparedStatement pstate;
		try {
			pstate=con.prepareStatement("update registerBank set password=? where username=?");
			pstate.setString(1,lobj.getPassword());
			pstate.setString(2,lobj.getUserName());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i;
	}

	

}
