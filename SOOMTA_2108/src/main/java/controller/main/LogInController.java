package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.LogInCommand;



@Controller
@RequestMapping("soomta")
public class LogInController {
	@RequestMapping("login")
	public String loginPage() {
		return "login/login";
	}
	@RequestMapping(method=RequestMethod.GET)
	public String login(LogInCommand logInCommand) {
		return "redirect:/main";
	}
	@RequestMapping("join")
	public String joinPage() {
		return "redirect:/main";
	}
	@RequestMapping("searchIdPw") //비밀번호 아이디 찾기
	public String searchIdPwPage() {
		return "login/idpwFound";
	}
	@RequestMapping("findId")
	public String findId() {
		return "login/findId";
	}
	@RequestMapping("findPw")
	public String findPw() {
		return "login/findPw";
	}
	
	@RequestMapping("tutorJoin")//튜터등록
	public String tutorJoin() {
		return "tutor/tutorJoinForm";
	}
	@RequestMapping("memJoin")//회원가입
	public String memJoin() {
		return "member/memJoinForm";
	}
	
	
	
}
