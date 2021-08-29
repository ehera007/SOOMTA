package service.faq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import repository.FaqRepository;

public class FaqViewService {
	@Autowired
	FaqRepository faqRepository;
	public void tNoticeC(String faqNo, Model model) {
		FaqDTO dto = faqRepository.tNoticeC(faqNo);
		System.out.println("게시번호"+dto.getFaqNo());
		System.out.println("게시제목"+dto.getFaqTitle());
		model.addAttribute("tNo",dto);
	}
	public void tSupport(String faqNo, Model model) {
		FaqDTO dto = faqRepository.tSupport(faqNo);
		model.addAttribute("tSup", dto);
	}

}
