package service.band;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.BandNoticDTO;
import Model.BandWishDTO;
import Model.LogInDTO;
import Model.ReviewDTO;
import Model.LogInDTO;
import repository.BandDetailRepository;
import repository.BandRepository;

public class BandIntroService {
	@Autowired
	BandRepository bandRepository;
	@Autowired
BandDetailRepository bandDetailRepository;
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
		
		List<BandNoticDTO> list = bandDetailRepository.selectAll(bandNo);
		model.addAttribute("list", list);
	}
}
