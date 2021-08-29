package service.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import repository.FaqRepository;

public class MemListService {
	@Autowired
	FaqRepository faqRepository;
	public void noticeList(Model model) {
		List<FaqDTO> list = faqRepository.mNoticeList();
		model.addAttribute("mNotice",list);
	}
	public void qList(Model model) {
		List<FaqDTO> list = faqRepository.mQList();
		model.addAttribute("mQ",list);
	}
	public void helpList(Model model) {
		List<FaqDTO> list = faqRepository.mHelpList();
		model.addAttribute("mHelp",list);
	}

}
