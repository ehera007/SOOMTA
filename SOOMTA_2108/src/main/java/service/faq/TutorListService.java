package service.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import repository.FaqRepository;

public class TutorListService {
	@Autowired
	FaqRepository faqRepository;
	public void noticeList(Model model) {
		List<FaqDTO> list = faqRepository.tNoticeList();
		model.addAttribute("tNotice",list);
	}
	public void qList(Model model) {
		List<FaqDTO> list = faqRepository.tQList();
		model.addAttribute("tQ",list);
	}
	public void helpList(Model model) {
		List<FaqDTO> list = faqRepository.tHelpList();
		model.addAttribute("tHelp",list);
	}
}
