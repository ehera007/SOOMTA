package service.class1;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import Model.LogInDTO;
import repository.ClassRepository;
import repository.TutorRepository;

public class TutorClassListService {
	@Autowired
	ClassRepository classRepository;
	@Autowired
	TutorRepository tutorRepository;
	public void tutorclassList(Model model, HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		List<ClassDTO> list = classRepository.tutorClassList(logIn.getUserId());
		model.addAttribute("list", list);
		int classCount = classRepository.classCount(logIn.getUserId());
		model.addAttribute("classCount",classCount);

	}
}
