package service.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.FaqDTO;
import repository.FaqRepository;

public class HireListService {
	@Autowired
	FaqRepository faqRepository;
	public void hire(Model model) {
		List<FaqDTO> list = faqRepository.hire();
		model.addAttribute("hire",list);
	}
}
