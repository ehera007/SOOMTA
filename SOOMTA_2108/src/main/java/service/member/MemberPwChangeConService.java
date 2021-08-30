package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.LogInDTO;
import Model.MemberDTO;
import repository.MemberRepository;

public class MemberPwChangeConService {
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	MemberPerDataService memberPerDataService;
	public String memPwCon(String memPw,HttpSession session,Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		MemberDTO dto = memberRepository.perData(logIn.getUserId());
		if(bcryptPasswordEncoder.matches(memPw,dto.getMemPw())) {
			return "member/pwChange";//커맨드 객체 필요
		}else {
			model.addAttribute("pwFail1", "비밀번호가 틀립니다");
			memberPerDataService.perData(model,session);
			return "member/pwCon";
		}
	}
}
