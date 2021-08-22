package service.employee;

import org.springframework.beans.factory.annotation.Autowired;

import Model.EmployeeDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeUpdateService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empUpdate(EmployeeCommand employeeCommand) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(employeeCommand.getEmpId().replace(",", ""));
		System.out.println("ID"+dto.getEmpId());
		dto.setEmpName(employeeCommand.getEmpName());
		dto.setEmpJob(employeeCommand.getEmpJob());
		dto.setEmpPhone(employeeCommand.getEmpPhone());
		dto.setEmpEmail(employeeCommand.getEmpEmail());
		dto.setEmpAddr(employeeCommand.getEmpAddr());
		employeeRepository.empUpdate(dto);
		
	}
}
