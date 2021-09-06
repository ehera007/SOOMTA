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
	
	public void classWish(String classNo, HttpSession session, Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId =logIn.getUserId();
		WishDTO dto = new WishDTO();
		dto.setClassNo(classNo);
		dto.setMemId(memId);		
		int wish = classRepository.wishChk(dto);
		if(wish == 1) {
			classRepository.wishDel(dto);
			model.addAttribute("num", 0);
		} else {
			classRepository.classWish(dto);
			model.addAttribute("num", 1);
		}
	}
	

}
