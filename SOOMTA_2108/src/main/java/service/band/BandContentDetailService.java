package service.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandNoticDTO;
import Model.LogInDTO;
import repository.BandDetailRepository;

public class BandContentDetailService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public void bandDetail(String noticeNo, Model model) {
		BandNoticDTO dto = bandDetailRepository.noticeDetail(noticeNo);
		model.addAttribute("dto", dto);
	}
}
