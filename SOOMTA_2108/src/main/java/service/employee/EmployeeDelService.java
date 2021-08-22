package service.employee;

import org.springframework.beans.factory.annotation.Autowired;

import repository.EmployeeRepository;

public class EmployeeDelService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empDel(String empId) {
		employeeRepository.empDel(empId);
	}
}
