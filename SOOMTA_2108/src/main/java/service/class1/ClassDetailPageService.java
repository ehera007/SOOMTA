package service.class1;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import Model.LogInDTO;
import Model.ReviewDTO;
import Model.TutorDTO;
import Model.WishDTO;
import repository.ClassRepository;
import repository.TutorRepository;

public class ClassDetailPageService {
	@Autowired
	ClassRepository classRepository;
	@Autowired
	TutorRepository tutorRepository;
	public void classDetailPage(String classNo, String tutorId, Model model, HttpSession session) {
		ClassDTO dto = classRepository.classDetailPage(classNo);
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId = "";
		
		if(logIn != null)
			memId = logIn.getUserId();
		
		WishDTO wishDTO = new WishDTO();
		wishDTO.setClassNo(classNo);
		wishDTO.setMemId(memId);
		wishDTO.setTutorId(tutorId);
		int wish = classRepository.wishChk(wishDTO);
		if(wish == 1) {
			dto.setClassWish(true);
		} else {
			dto.setClassWish(false);
		}

		System.out.println(dto.getClassWish());
		
		

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
