package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;

import Model.LogInDTO;
import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberPwUpdateService {
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	MemberRepository memberRepository; 
	public void memPwUpdate(MemberCommand memberCommand,Errors errors,HttpSession session) {
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		MemberDTO dto = new MemberDTO();
		dto = memberRepository.perData(logIn.getUserId());
		dto.setMemId(logIn.getUserId());
		dto.setMemPw(bcryptPasswordEncoder.encode(memberCommand.getMemPw()));
		memberRepository.memPwUpdate(dto);			
		
		}
		
	}

