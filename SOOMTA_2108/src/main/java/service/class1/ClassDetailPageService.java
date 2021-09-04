package service.class1;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import Model.ReviewDTO;
import Model.TutorDTO;
import repository.ClassRepository;
import repository.TutorRepository;

public class ClassDetailPageService {
	@Autowired
	ClassRepository classRepository;
	@Autowired
	TutorRepository tutorRepository;
	public void classDetailPage(String classNo, String tutorId, Model model) {
		ClassDTO dto = classRepository.classDetailPage(classNo);
		model.addAttribute("dto", dto);
		
		TutorDTO dto1 = tutorRepository.promanage(tutorId);
		model.addAttribute("dto1", dto1);
		
		int classCount = classRepository.classCount(tutorId);
		model.addAttribute("classCount",classCount);
		
		List<ReviewDTO> list = classRepository.reviewViewList(classNo);
		model.addAttribute("list", list);
		
		double tutorSatisTfyAllCount = classRepository.tutorSatisTfyAllCount(tutorId);
		model.addAttribute("tutorSatisTfyAllCount", tutorSatisTfyAllCount);
				
	}
}
