package service.tutor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.LogInDTO;
import Model.TutorDTO;
import command.TutorCommand;
import repository.TutorRepository;

public class TutorUpdateService {
	@Autowired
	TutorRepository tutorRepository;
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void perDataUpdate(TutorCommand tutorCommand, HttpSession session) {
		
		TutorDTO dto = new TutorDTO();
		dto.setTutorId(tutorCommand.getTutorId());
		dto.setTutorName(tutorCommand.getTutorName());
		dto.setTutorDob(tutorCommand.getTutorDob());
		dto.setTutorPhone(tutorCommand.getTutorPhone());
		dto.setTutorEmail(tutorCommand.getTutorEmail());
		dto.setTutorGender(tutorCommand.getTutorGender());
		
		tutorRepository.perDataUpdate(dto);
	}
	
	
	public void promanageSujung(TutorCommand tutorCommand, HttpSession session) {
		
		TutorDTO dto = new TutorDTO();
		
		dto.setTutorLikearea(tutorCommand.getTutorLikearea());
		System.out.println(tutorCommand.getTutorLikearea());
		
		dto.setTutorRespond(tutorCommand.getTutorRespond());
		System.out.println(tutorCommand.getTutorRespond());
		
		dto.setTutorCareer(tutorCommand.getTutorCareer());
		System.out.println(tutorCommand.getTutorCareer());
		
		dto.setTutorCertification(tutorCommand.getTutorCertification());
		System.out.println(tutorCommand.getTutorCertification());
		
		dto.setTutorFinalEdu(tutorCommand.getTutorFinalEdu());
		System.out.println(tutorCommand.getTutorFinalEdu());
		
		dto.setTutorIntroduce(tutorCommand.getTutorIntroduce());
		System.out.println(tutorCommand.getTutorIntroduce());
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		dto.setTutorId(logIn.getUserId());
		
	
		
		tutorRepository.promanageSujung(dto);
	}
}
