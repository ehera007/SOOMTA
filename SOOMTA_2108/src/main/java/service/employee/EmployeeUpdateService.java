package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.EmployeeDTO;
import Model.LogInDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeeUpdateService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empUpdate(EmployeeCommand employeeCommand) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(employeeCommand.getEmpId());
		dto.setEmpName(employeeCommand.getEmpName());
		dto.setEmpJob(employeeCommand.getEmpJob());
		dto.setEmpPhone(employeeCommand.getEmpPhone());
		dto.setEmpEmail(employeeCommand.getEmpEmail());
		dto.setEmpAddr(employeeCommand.getEmpAddr());
		dto.setHireDate(employeeCommand.getHireDate());
		employeeRepository.empUpdate(dto);
	}
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void myInfoUpdate(EmployeeCommand employeeCommand, Errors errors, HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		EmployeeDTO dto = employeeRepository.empInfo(logIn.getUserId());
		if(bCryptPasswordEncoder.matches(employeeCommand.getEmpPw(), dto.getEmpPw())) {
			dto = new EmployeeDTO();
			dto.setEmpAddr(employeeCommand.getEmpAddr());
			dto.setEmpEmail(employeeCommand.getEmpEmail());
			dto.setEmpPhone(employeeCommand.getEmpPhone());
			dto.setEmpId(logIn.getUserId());
			employeeRepository.myInfoUpdate(dto);
		}else {
			errors.reject("empPw", "notPw");
		}
	}
	

}
