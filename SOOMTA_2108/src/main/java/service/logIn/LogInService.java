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
		LogInDTO logIn = logInRepository.logIn(userId);
		if(logIn == null) {
			errors.rejectValue("userId", "notId");
		}else {
			if(bcryptPasswordEncoder.matches(logInCommand.getUserPw(),logIn.getUserPw())) {
				session.setAttribute("logIn", logIn);
				if(logInCommand.getAutoLogin() != null) {
					Cookie cookie = new Cookie("autoLogin", logIn.getUserId());
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
					Cookie cookie = new Cookie("idStore", logIn.getUserId());
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
	public LogInDTO duplicateCk(String userId) {
		LogInDTO logIn = logInRepository.logIn(userId); 
		return logIn;
	}
	public int idCheck(String id) {
		int count = logInRepository.idCheck(id);
		return count;
	}
	public int emailCheck(String email) {
		int count = logInRepository.emailCheck(email);
		return count;
	}
	public int emailCheckM(String email) {
		int count = logInRepository.emailCheckM(email);
		return count;
	}
}
