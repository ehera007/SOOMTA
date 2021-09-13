package service.band;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.BandWishDTO;
import Model.LogInDTO;
import repository.BandRepository;

public class BandWishListService {
	@Autowired
	BandRepository bandRepository;
	public void wishBand(HttpSession session, Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId = logIn.getUserId();
		List<BandWishDTO> list = bandRepository.wishBand(memId);
		model.addAttribute("list",list);
	}
}

