package service.band;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandNoticDTO;
import repository.BandDetailRepository;

public class BandContentAllService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public void selectAll(Model model, Long bandNo){
		List<BandNoticDTO> list = bandDetailRepository.selectAll(bandNo);
		model.addAttribute("list", list);
		model.addAttribute("bandNo", bandNo);
	}
	public void mySelect(String memId, Model model) {
		List<BandNoticDTO> list = bandDetailRepository.myselect(memId);
		model.addAttribute("list", list);
	}
}
