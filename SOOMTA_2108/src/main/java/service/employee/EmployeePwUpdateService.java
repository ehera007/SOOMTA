package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;

import Model.EmployeeDTO;
import Model.LogInDTO;
import command.EmployeeCommand;
import repository.EmployeeRepository;

public class EmployeePwUpdateService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public int empPwCon(String empPw, Model model, HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		EmployeeDTO dto = employeeRepository.empInfo(logIn.getUserId());
		if(!bCryptPasswordEncoder.matches(empPw, dto.getEmpPw())) {
			model.addAttribute("errPw","비밀번호가 틀렸습니다.");
			return 1;
		}
		return 0;
	}
	
	public void empPwUpdate(EmployeeCommand employeeCommand, Errors errors) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(employeeCommand.getEmpId());
		if(employeeCommand.isEmpPwConEq()) {
			dto.setEmpPw(bCryptPasswordEncoder.encode(employeeCommand.getEmpPw()));
			employeeRepository.empPwUpdate(dto);
		}else {
			errors.rejectValue("empPwCon", "nomatch");
		}
	}
	
	public void myPwUpdate(EmployeeCommand employeeCommand, Errors errors, HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		EmployeeDTO dto = employeeRepository.empInfo(logIn.getUserId());
		if(!bCryptPasswordEncoder.matches(employeeCommand.getOldPw(), dto.getEmpPw())) {
			errors.rejectValue("oldPw", "notPw");
		}else {
			if(employeeCommand.isEmpPwConEq()) {
				dto.setEmpPw(bCryptPasswordEncoder.encode(employeeCommand.getEmpPw()));
				dto.setEmpId(logIn.getUserId());
				employeeRepository.empPwUpdate(dto);
			}else {
				errors.rejectValue("empPwCon", "nomatch");
			}
		}
	}
}
