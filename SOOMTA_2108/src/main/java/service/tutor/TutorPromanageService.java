package service.tutor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.LogInDTO;
import Model.TutorDTO;
import repository.TutorRepository;

public class TutorPromanageService {
	
	@Autowired
	TutorRepository tutorRepository;
	public void promanage(HttpSession session, Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String tutorId = logIn.getUserId();
		TutorDTO dto = tutorRepository.promanage(tutorId);
		model.addAttribute("tutor",dto);
}
}