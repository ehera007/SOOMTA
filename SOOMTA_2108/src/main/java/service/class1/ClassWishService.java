package service.class1;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.LogInDTO;
import Model.WishDTO;
import repository.ClassRepository;

public class ClassWishService {
	@Autowired
	ClassRepository classRepository;
	
	public void classWish(String classNo, String tutorId,  HttpSession session, Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId =logIn.getUserId();
		WishDTO dto = new WishDTO();
		dto.setClassNo(classNo);
		dto.setMemId(memId);
		dto.setTutorId(tutorId);
		int wish = classRepository.wishChk(dto);
		if(wish == 0 ) {
			classRepository.classWish(dto);
			model.addAttribute("num", 1);
		} else {
			classRepository.wishDel(dto);
			model.addAttribute("num", 0);
		}
	}
	

}