package service.band;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import repository.BandDetailRepository;
import repository.BandRepository;

public class BandIntroService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public void bandIntro(String bandNo, Model model) {
		BandDTO dto = bandDetailRepository.bandIntro(bandNo);
		model.addAttribute("dto", dto);
		
	}
}
