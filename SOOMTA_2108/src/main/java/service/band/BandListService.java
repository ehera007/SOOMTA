package service.band;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.LogInDTO;
import repository.BandRepository;

public class BandListService {
	@Autowired
	BandRepository bandRepository;
	public void bandList(Model model,HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		List<BandDTO> list = bandRepository.bandList(logIn.getUserId());
		model.addAttribute("lists",list);
	}
}
