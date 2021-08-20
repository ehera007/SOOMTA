package service.logIn;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.LogInDTO;
import command.LogInCommand;
import repository.LogInRepository;

public class LogInService {
	@Autowired
	LogInRepository logInRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	public void logIn1(LogInCommand logInCommand, Errors errors, HttpSession session, HttpServletResponse response) {
		String userId = logInCommand.getUserId();
		LogInDTO dto = logInRepository.logIn(userId);
		if(dto == null) {
			errors.rejectValue("userId", "notId");
		}else {
			if(bcryptPasswordEncoder.matches(logInCommand.getUserPw(),dto.getUserPw())) {
				session.setAttribute("dto", dto);
				if(logInCommand.getAutoLogin() != null) {
					Cookie cookie = new Cookie("autoLogin", dto.getUserId());
					cookie.setPath("/");
					cookie.setMaxAge(60*60*24*30);//약 30일동안
					response.addCookie(cookie);
				}else {
					Cookie cookie = new Cookie("autoLogin", "");
					cookie.setPath("/");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
				if(logInCommand.getIdStore() != null) {
					Cookie cookie = new Cookie("idStore", dto.getUserId());
					cookie.setPath("/");
					cookie.setMaxAge(60*60*24*30);
					response.addCookie(cookie);
			}else {
				Cookie cookie = new Cookie("idStore", "");
				cookie.setPath("/");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}else {
			errors.rejectValue("userPw", "notPw");
			}
		}
	}
}
