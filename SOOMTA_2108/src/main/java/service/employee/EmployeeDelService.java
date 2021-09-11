package service.employee;

import org.springframework.beans.factory.annotation.Autowired;

import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeDelService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empDel(String empId) {
		employeeRepository.empDel(empId);
	}
	public void empCkDel(EmployeeCommand employeeCommand) {
		String empId = employeeCommand.getRowCk();
		System.out.println(empId);
		String[] empIdx = empId.toString().split(",");
		for(int i = 0; i<empIdx.length;i++) {
			employeeRepository.empDel(empIdx[i]);
		}
	}
}
