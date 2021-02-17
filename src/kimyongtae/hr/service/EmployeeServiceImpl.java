package kimyongtae.hr.service;

import java.time.LocalDate;
import java.util.List;

import kimyongtae.hr.dao.EmployeeDao;
import kimyongtae.hr.dao.EmployeeDaoImpl;
import kimyongtae.hr.domain.Employee;

public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeDao empDao;		
	
	public EmployeeServiceImpl() {
		this.empDao = new EmployeeDaoImpl();
	}
	
	@Override
	public List<Employee> getEmployees() {
		return empDao.selectEmployees();
	}
	
	@Override
	public Employee getEmployee(int empId) {
		return empDao.selectEmployee(empId);
	}
	
	@Override
	public boolean addEmployee(String empName, LocalDate hireDate) {
		return empDao.insertEmployee(empName, hireDate) > 0;
	}
	
	@Override
	public boolean fixEmployee(Employee emp) {
		return empDao.updateEmployee(emp) > 0;
	}
	
	@Override
	public boolean delEmployee(int empId) {
		return empDao.deleteEmployee(empId) > 0;
	}
}
