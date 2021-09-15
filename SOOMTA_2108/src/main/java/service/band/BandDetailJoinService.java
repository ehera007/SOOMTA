package service.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandJoinDTO;
import command.BandMemCommand;
import repository.BandDetailRepository;

public class BandDetailJoinService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	
	public void bandDetailJoin(HttpSession session, BandMemCommand bandMemCommand, Model model) {
		System.out.println("vadsgvadv :" +bandMemCommand.getBandNo());
		BandJoinDTO dto = new BandJoinDTO();
		dto.setBandJoinIntro(bandMemCommand.getBandJoinIntro());
		dto.setBandNo(bandMemCommand.getBandNo());
		dto.setMemId(bandMemCommand.getMemId());
		System.out.println("bandpublic :: " + bandMemCommand.getBandPublic());
		
		if(bandMemCommand.getBandPublic().equals("O") ) {
			dto.setBandAllow("Y");
		}else {
			dto.setBandAllow("N");
		}
		bandDetailRepository.bandJoin(dto);
		model.addAttribute("memId", bandMemCommand.getMemId());
		model.addAttribute("bandNo", bandMemCommand.getBandNo());
	}
}