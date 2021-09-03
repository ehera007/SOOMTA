package service.class1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import repository.ClassRepository;

public class ClassDetailPageService2 {
	@Autowired
	ClassRepository classRepository;
	public void classDetailPage(String classNo, Model model) {
		ClassDTO dto = classRepository.classDetailPage(classNo);
		model.addAttribute("dto", dto);
	}
}
