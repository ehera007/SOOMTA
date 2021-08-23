package service.band;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import repository.BandRepository;

public class BandListService {
	@Autowired
	BandRepository bandRepository;
	public void bandList(Model model) {
		List<BandDTO> list = bandRepository.bandList();
		model.addAttribute("lists",list);
	}
}
