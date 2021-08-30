package service.tutor;

import org.springframework.beans.factory.annotation.Autowired;

import repository.TutorRepository;

public class TutorDeleteService {

	@Autowired
	TutorRepository tutorRepository;
	public void tutorDel(String tutorId) {
		tutorRepository.tutorDel(tutorId);
	}
}