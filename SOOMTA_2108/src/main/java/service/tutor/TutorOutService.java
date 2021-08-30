package service.tutor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.LogInDTO;
import repository.TutorRepository;

public class TutorOutService {
		@Autowired
		BCryptPasswordEncoder bcryptPasswordEncoder;
		@Autowired
		TutorRepository tutorRepository; 
		public String tutorDelete(String tutorPw, HttpSession session,
				Model model) {
			LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
			if(bcryptPasswordEncoder.matches(tutorPw, logIn.getUserPw())) {
				tutorRepository.tutorDelete(logIn.getUserId());
				return "redirect:/soomta/logOut";
			}else {
				model.addAttribute("pwFail", "비밀번호가 틀립니다.");
				return "tutor/outCon";
			}
		}
	}
