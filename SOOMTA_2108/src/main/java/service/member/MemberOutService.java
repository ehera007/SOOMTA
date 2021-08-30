package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.LogInDTO;
import repository.MemberRepository;

//회원 탈퇴 서비스
public class MemberOutService {
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;//비밀번호 암호화
	@Autowired
	MemberRepository memberRepository;
	public String memOut(String memPw, HttpSession session,
			Model model) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");//정보
		if(bcryptPasswordEncoder.matches(memPw, logIn.getUserPw())){//매치
			memberRepository.memOut(logIn.getUserId());
			return "redirect:/soomta/logOut";
		}else {
			model.addAttribute("pwFail","비밀번호가 다릅니다,");
			return "member/outCon"; 
		}
	}
}
