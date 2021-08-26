package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import Model.TutorDTO;
import repository.EmployeeRepository;

public class InfoService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void tutorInfo(String tutorId, Model model) {
		TutorDTO dto = employeeRepository.tutorInfo(tutorId);
		model.addAttribute("tutor", dto);
	}
	public void tutorProfile(String tutorId, Model model) {
		TutorDTO dto = employeeRepository.tutorProfile(tutorId);
		model.addAttribute("tutor", dto);
	}
	public void memInfo(String memId, Model model) {
		MemberDTO dto = employeeRepository.memInfo(memId);
		model.addAttribute("mem", dto);
	}
}
