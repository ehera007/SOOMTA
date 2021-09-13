package service.band;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.BandWishDTO;
import Model.LogInDTO;
import repository.BandRepository;

public class BandIntroService {
	@Autowired
	BandRepository bandRepository;

	public void bandIntro(Long bandNo, Model model, HttpSession session) {
		System.out.println("svuscasvsav");
		BandDTO dto = bandRepository.bandIntro(bandNo);
		LogInDTO logIn = (LogInDTO) session.getAttribute("logIn");
		String memId = "";

		if (logIn != null) 
			memId = logIn.getUserId();

		BandWishDTO bandWishDTO = new BandWishDTO();
		bandWishDTO.setBandNo(bandNo);
		bandWishDTO.setMemId(memId);
		int wish = bandRepository.wishChk(bandWishDTO);
		if (wish == 1) {
			dto.setBandWish(true);
		} else {
			dto.setBandWish(false);
		}

		model.addAttribute("dto", dto);
	}
}
