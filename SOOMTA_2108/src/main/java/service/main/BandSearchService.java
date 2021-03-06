package service.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import repository.SearchRepository;

public class BandSearchService {
	@Autowired
	SearchRepository searchRepository;
	public void bandSearch(Model model, String keyWord) {
		List<BandDTO> blist = searchRepository.bandSearch(keyWord);
		model.addAttribute("blist", blist);
	}
}
