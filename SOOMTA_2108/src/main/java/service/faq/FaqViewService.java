package service.faq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import repository.FaqRepository;

public class FaqViewService {
	@Autowired
	FaqRepository faqRepository;
	public void tView(String faqNo, Model model) {
		faqRepository.hitCnt(faqNo);
		FaqDTO dto = faqRepository.tView(faqNo);
		model.addAttribute("dto",dto);
	}

}
