package service.employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.EmployeeDTO;
import Model.LogInDTO;
import repository.EmployeeRepository;

public class EmployeeInfoService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void empInfo(String empId, Model model) {
		EmployeeDTO dto = employeeRepository.empInfo(empId);
		model.addAttribute("emp", dto);
	}
	public void myInfo(HttpSession session, Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String empId = logIn.getUserId();
		EmployeeDTO dto = employeeRepository.empInfo(empId);
		model.addAttribute("my",dto);
	}

}
