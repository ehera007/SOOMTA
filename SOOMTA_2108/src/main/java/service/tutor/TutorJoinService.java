package service.tutor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Model.TutorDTO;
import command.TutorCommand;
import repository.TutorRepository;

public class TutorJoinService {
	@Autowired
	TutorRepository tutorRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void tutorInsert(TutorCommand tutorCommand) {
		TutorDTO dto = new TutorDTO();
		dto.setTutorId(tutorCommand.getTutorId());
		dto.setTutorPw(bCryptPasswordEncoder.encode(tutorCommand.getTutorPw()));
		dto.setTutorName(tutorCommand.getTutorName());
		dto.setTutorDob(tutorCommand.getTutorDob());
		dto.setTutorGender(tutorCommand.getTutorGender());
		dto.setTutorPhone(tutorCommand.getTutorPhone());
		dto.setTutorEmail(tutorCommand.getTutorEmail());
		dto.setTutorArea(tutorCommand.getTutorArea());
		dto.setTutorEmailCk(tutorCommand.getTutorEmailCk());
		dto.setTutor_Since(tutorCommand.getTutor_Since());
		tutorRepository.tutorInsert(dto);
	}
}
