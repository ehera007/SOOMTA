package service.tutor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;


import Model.LogInDTO;
import Model.TutorDTO;
import command.TutorCommand;
import repository.TutorRepository;



public class TutorPwChangeService {
	@Autowired
	TutorRepository tutorRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void pwChange(TutorCommand tutorCommand, Errors errors, HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		TutorDTO dto = tutorRepository.perData(logIn.getUserId());
		System.out.println(tutorCommand.getOldPw());
		System.out.println(dto.getTutorPw());
		if(!bCryptPasswordEncoder.matches(tutorCommand.getOldPw(), dto.getTutorPw())) {
			errors.rejectValue("oldPw", "notPw");
		}else {
			if(tutorCommand.isTutorPwConEq()) {
				dto.setTutorPw(bCryptPasswordEncoder.encode(tutorCommand.getTutorPw()));
				dto.setTutorId(logIn.getUserId());
				tutorRepository.pwChange(dto);
			}else {
				errors.rejectValue("tutorPwCon", "nomatch");
			}
		}
	}
}