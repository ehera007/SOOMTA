package service.class1;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.LogInDTO;
import Model.WishDTO;
import repository.ClassRepository;
	
public class ClassWishListService {
		@Autowired
		ClassRepository classRepository;
		public void wishClass(HttpSession session, Model model) {
			LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
			String memId = logIn.getUserId();
			List<WishDTO> list = classRepository.wishClass(memId);
			model.addAttribute("list",list);
		}
}
