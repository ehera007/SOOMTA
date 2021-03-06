package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberJoinService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void memInsert(MemberCommand memberCommand, Model model) {
		MemberDTO dto = new MemberDTO();
		dto.setMemArea(memberCommand.getMemArea());
		dto.setMemDob(memberCommand.getMemDob());
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemEmailCk(memberCommand.getMemEmailCk());
		dto.setMemGender(memberCommand.getMemGender());
		dto.setMemId(memberCommand.getMemId());
		dto.setMemName(memberCommand.getMemName());
		dto.setMemPhone(memberCommand.getMemPhone());
		dto.setMemPw(bCryptPasswordEncoder.encode(memberCommand.getMemPw()));
		System.out.println("이메일체크"+dto.getMemEmailCk());
		memberRepository.memInsert(dto);
		model.addAttribute("dto", dto);
	}
}
