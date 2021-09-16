package service.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandNoticDTO;
import command.BandContentCommand;
import repository.BandDetailRepository;

public class BandContentDetailService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	public void noticeDel(String noticeNo) {
		bandDetailRepository.noticeDel(noticeNo);
	}
	public void bandDetail(String noticeNo, Model model) {
		BandNoticDTO dto = bandDetailRepository.noticeDetail(noticeNo);
		model.addAttribute("dto", dto);
	}
	public void bandNoticeUpdate(BandContentCommand bandContentCommand) {
		BandNoticDTO dto = new BandNoticDTO();
		dto.setNoticeNo(bandContentCommand.getNoticeNo());
		dto.setNoticeSub(bandContentCommand.getNoticeSub());
		dto.setNoticeCon(bandContentCommand.getNoticeCon());
		System.out.println(dto.getNoticeNo());
		System.out.println(dto.getNoticeSub());
		System.out.println(dto.getNoticeCon());
		bandDetailRepository.updateNotice(dto);
	}
}
