package service.class1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import repository.ClassRepository;

public class ClassListService {
	@Autowired
	ClassRepository classRepository;
	public void classList(Model model,String classCategoryS) {
		List<ClassDTO> list = classRepository.classList(classCategoryS);
		model.addAttribute("list", list);
	}
}
