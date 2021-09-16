package service.band;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.BandNoticDTO;
import Model.LogInDTO;
import repository.BandDetailRepository;

public class BandContentAllService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public void selectAll(Model model, Long bandNo){
		List<BandNoticDTO> list = bandDetailRepository.selectAll(bandNo);
		
		model.addAttribute("list", list);
		model.addAttribute("bandNo", bandNo);
	}
	public void mySelect(HttpSession session, Model model) {
		LogInDTO dto = (LogInDTO)session.getAttribute("logIn");
		List<BandNoticDTO> list = bandDetailRepository.myselect(dto.getUserId());
		model.addAttribute("list", list);
	}
}
