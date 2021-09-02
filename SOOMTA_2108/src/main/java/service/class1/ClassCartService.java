package service.class1;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import repository.ClassRepository;
import repository.MemberRepository;

public class ClassCartService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	ClassRepository classRepository;
	public void classCart(String classNo, Model model) {
		String purchaseNo = memberRepository.purchaseNo();
		model.addAttribute("purchaseNo", purchaseNo);
		ClassDTO dto = classRepository.classDetailPage(classNo);
		model.addAttribute("dto", dto);
	}
}
