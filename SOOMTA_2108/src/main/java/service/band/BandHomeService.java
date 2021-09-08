package service.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import repository.BandDetailRepository;

public class BandHomeService {
	@Autowired
	BandDetailRepository bandDetailRepository; 
	public void bandHome(long bandNo, Model model) {
		BandDTO bandDTO = bandDetailRepository.band(bandNo);
		model.addAttribute("bandDTO", bandDTO);
	}
}
