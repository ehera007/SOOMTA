package controller.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.IdPwFindeCommand;
import command.LogInCommand;
import command.MemberCommand;
import command.TutorCommand;
import service.logIn.CookieService;
import service.logIn.FindService;
import service.logIn.LogInService;
import service.member.MemberJoinService;
import service.tutor.TutorJoinService;
import validator.LogInCommandValidator;



@Controller
@RequestMapping("soomta")
public class LogInController {
	@Autowired
	CookieService cookieService;
	@Autowired
	FindService findService;
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginPage(@ModelAttribute LogInCommand logInCommand, HttpServletRequest request) {//로그인페이지
		cookieService.getCookie(request);
		return "login/login";
	}
	
	@Autowired
	LogInService logInService;
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(LogInCommand logInCommand,Errors errors, HttpSession session, HttpServletResponse response){//로그인
		new LogInCommandValidator().validate(logInCommand, errors);
		if(errors.hasErrors()) {
			return "login/login";
		}
		logInService.logIn1(logInCommand, errors, session,response);
		if(errors.hasErrors()) {
			return "login/login";
		}
		
		return "redirect:/main";
	}

	@RequestMapping("logOut")
	public String logOut(HttpSession session, HttpServletResponse response) {//로그아웃
		Cookie cookie = new Cookie("autoLogin","");
		cookie.setPath("/");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		session.invalidate();
		return "redirect:/main";
	}
	@RequestMapping("searchIdPw") //비밀번호 아이디 찾기
	public String searchIdPwPage() {
		return "login/searchIdPw";
	}
	@RequestMapping("findId") //id찾기
	public String findId(IdPwFindeCommand idPwFindeCommand, Model model) {
		findService.idFind(idPwFindeCommand, model);
		return "login/findId";
	}
	@RequestMapping("findPw") //pw찾기
	public String findPw(IdPwFindeCommand idPwFindeCommand, Model model) {
		findService.pwFind(idPwFindeCommand, model);
		return "login/findPw";
	}
	
	@RequestMapping("tutorJoin")//튜터등록
	public String tutorJoin() {
		return "tutor/join";
	}
	@RequestMapping("memJoin")//회원가입
	public String memJoin() {
		return "member/join";
	}
	
	@Autowired
	TutorJoinService tutorJoinService;
	@RequestMapping(value="tutorJoined", method=RequestMethod.POST)//튜터등록 완료 후
	public String tutorJoined(TutorCommand tutorCommand, Model model) {
		tutorJoinService.tutorInsert(tutorCommand, model);
		return "tutor/joined";
	}
	@Autowired
	MemberJoinService memberJoinService;
	@RequestMapping(value="memJoined", method=RequestMethod.POST)//회원가입 완료 후
	public String memJoined(MemberCommand memberCommand, Model model) {
		memberJoinService.memInsert(memberCommand, model);
		return "member/joined";
	}
	
	
	
}
