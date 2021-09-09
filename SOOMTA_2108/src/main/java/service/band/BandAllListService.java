package service.band;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import repository.BandRepository;
	
public class BandAllListService {
	@Autowired
	BandRepository bandRepository;
	public void bandAllList(Model model, String bandCategoryS) {
		List<BandDTO> list = bandRepository.bandAllList(bandCategoryS);
		model.addAttribute("list", list);
	}
}
