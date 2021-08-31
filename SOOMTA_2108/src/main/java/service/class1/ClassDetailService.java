package service.class1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import repository.ClassRepository;

public class ClassDetailService {
	@Autowired
	ClassRepository classRepository;
	public void classDetail(String classNo, Model model) {
		ClassDTO dto = classRepository.classDetail(classNo);
		model.addAttribute("dto", dto);
	}
}
