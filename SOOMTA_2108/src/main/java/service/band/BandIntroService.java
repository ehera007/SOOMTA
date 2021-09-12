package service.band;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import repository.BandRepository;

public class BandIntroService {
	@Autowired
	BandRepository bandRepository;
	public void bandIntro(String bandNo, Model model) {
		BandDTO dto = bandRepository.bandIntro(bandNo);
		System.out.println("흠냐"+dto.getBandCategoryL());
		model.addAttribute("dto", dto);
		
	}
}
