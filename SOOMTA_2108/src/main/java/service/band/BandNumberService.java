package service.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import repository.BandRepository;

public class BandNumberService {
	@Autowired
	BandRepository bandRepository;
	public void bandNo(Model model) {
		String bandNo = bandRepository.bandNo();
		model.addAttribute("bandNo",bandNo);
	}
}
 