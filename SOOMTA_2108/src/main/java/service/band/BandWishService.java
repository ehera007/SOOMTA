package service.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.LogInDTO;
import repository.BandRepository;

public class BandWishService {
	@Autowired
	BandRepository bandRepository;
	public void bandWish(Long bandNo,HttpSession session,Model model) {
		/*BandDTO dto = new BandDTO();
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		dto.setMemId(logIn.getUserId());
		dto.setBandNo(bandNo);
		bandRepository.bandWish(dto);
		model.addAttribute("bandWish",dto);*/
	}
}
