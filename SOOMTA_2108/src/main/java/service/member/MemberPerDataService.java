package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.LogInDTO;
import Model.MemberDTO;
import repository.MemberRepository;

public class MemberPerDataService {
	@Autowired
	MemberRepository memberRepository;
	public void memPerInfo(Model model,HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId = logIn.getUserId();
		MemberDTO dto = memberRepository.memPerInfo(memId);
		model.addAttribute("memberCommand",dto);
	}
}
