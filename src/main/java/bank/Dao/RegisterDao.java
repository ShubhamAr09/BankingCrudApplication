package bank.Dao;

import java.util.List;

import bank.Model.Login;
import bank.Model.Register;

public interface RegisterDao {
	
	int createRecord(List<Register> lst);
	
	boolean validateUser(Login lobj);
	
	List<Register> retrieveRecord(int regNo);
	
	int deleteRecord(int regNo);
	
	int updatePassword(Login lobj);
	
	List<Register> retieveAllRecords();
	
	
}
