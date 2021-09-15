package service.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandNoticDTO;
import Model.LogInDTO;
import command.BandContentCommand;
import repository.BandDetailRepository;

public class BandContentJoinService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public String contentJoin(BandContentCommand bandContentCommand, HttpSession session) {
		LogInDTO login = (LogInDTO)session.getAttribute("logIn");
		BandNoticDTO dto = new BandNoticDTO();
		dto.setBandNo(bandContentCommand.getBandNo());
		dto.setMemId(login.getUserId());
		dto.setNoticeCon(bandContentCommand.getNoticeCon());
		dto.setNoticeSub(bandContentCommand.getNoticeSub());
		dto.setNoticeCategory(bandContentCommand.getNoticeCategory());
		bandDetailRepository.bandContent(dto);
		return login.getUserId();
	}
	
}
