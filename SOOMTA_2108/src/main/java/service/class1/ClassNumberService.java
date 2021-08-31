package service.class1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import repository.ClassRepository;

public class ClassNumberService {
	@Autowired
	ClassRepository classRepository;
	public void classNo(Model model) {
		String classNo = classRepository.classNo();
		model.addAttribute("classNo", classNo);
	}
}
