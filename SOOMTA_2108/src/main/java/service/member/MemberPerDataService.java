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
	public void perData(Model model,HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String memId = logIn.getUserId();
		MemberDTO dto = memberRepository.perData(memId);
		//System.out.println(dto.getMemId());
		//dto.get으로는 다 출력 됨 > 밑에 확인 필요
		model.addAttribute("memPerData", dto);
	}
}
