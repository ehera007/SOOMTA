package service.employee;

import org.springframework.beans.factory.annotation.Autowired;

import repository.EmployeeRepository;

public class DelService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void tutorDel(String tutorId) {
		employeeRepository.tutorDel(tutorId);
	}
	
	public void memDel(String memId) {
		employeeRepository.memDel(memId);
	} 

}
