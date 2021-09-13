package service.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.BandWishDTO;
import Model.LogInDTO;
import repository.BandDetailRepository;
import repository.BandRepository;

public class BandWishService {
	@Autowired
	BandRepository bandRepository;
	
	public void bandWish(Long bandNo,  HttpSession session, Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId =logIn.getUserId();
		System.out.println("bandNo : " + bandNo);
		System.out.println("logIn.getUserId() : " + logIn.getUserId());
		BandDTO bdto = bandRepository.bandIntro(bandNo);
		BandWishDTO dto = new BandWishDTO();
		dto.setBandNo(bandNo);
		dto.setMemId(memId);
		dto.setMemId2(bdto.getMemId());
		System.out.println("dto.getMemId() : "+dto.getMemId());
		System.out.println("dto.getMemId2() : " + dto.getMemId2());
		System.out.println("dto.getBandNo() : " + dto.getBandNo());
		int wish = bandRepository.wishChk(dto);
		if(wish == 0 ) {
			bandRepository.bandWish(dto);
			model.addAttribute("num", 1);
		} else {
			bandRepository.wishDel(dto);
			model.addAttribute("num", 0);
		}
	}
}
