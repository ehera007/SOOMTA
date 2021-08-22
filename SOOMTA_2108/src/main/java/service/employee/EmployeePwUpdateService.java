package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.EmployeeDTO;
import Model.LogInDTO;
import repository.EmployeeRepository;

public class EmployeePwUpdateService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public int empPwUpdate(String empPw, Model model, HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		EmployeeDTO dto = employeeRepository.empInfo(logIn.getUserId());
		if(!bCryptPasswordEncoder.matches(empPw, dto.getEmpPw())) {
			model.addAttribute("errPw","비밀번호가 틀렸습니다.");
			return 1;
		}
		return 0;
	}
}
