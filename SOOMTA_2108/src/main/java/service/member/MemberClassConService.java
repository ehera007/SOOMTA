package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.ClassDTO;
import repository.MemberRepository;

public class MemberClassConService {
	@Autowired
	MemberRepository memberRepository;
	public void classCon (String classNo,Model model) {
		ClassDTO dto = memberRepository.classCon(classNo);
		model.addAttribute("dto",dto);
	}
}
