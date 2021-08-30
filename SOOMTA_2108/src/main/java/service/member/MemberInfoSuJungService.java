package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MemberDTO;
import repository.MemberRepository;

public class MemberInfoSuJungService {
	@Autowired
	MemberRepository memberRepository;
	public void memInfoSuJung(String memId, Model model) {
		MemberDTO dto = memberRepository.perData(memId);
		model.addAttribute("memPwSuJung", dto);
	}
}
