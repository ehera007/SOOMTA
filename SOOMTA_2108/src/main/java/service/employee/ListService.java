package service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import Model.MemberDTO;
import Model.TutorDTO;
import repository.EmployeeRepository;

public class ListService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void tutorList(Model model) {
		List<TutorDTO> list = employeeRepository.tutorList();
		model.addAttribute("tutorList",list);
	}
	public void memList(Model model) {
		List<MemberDTO> list = employeeRepository.memList();
		model.addAttribute("memList",list);
	}
	public void boardList(Model model) {
		List<FaqDTO> list = employeeRepository.boardList();
		model.addAttribute("faqList", list);
	}
}
