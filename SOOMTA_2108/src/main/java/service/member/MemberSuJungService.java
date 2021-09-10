package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.MemberDTO;
import command.MemberCommand;
import repository.MemberRepository;

public class MemberSuJungService {
	@Autowired
	MemberRepository memberRepository;
	public void memUpdate(HttpSession session,
			MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		dto.setMemId(memberCommand.getMemId());
		dto.setMemName(memberCommand.getMemName());
		dto.setMemDob(memberCommand.getMemDob());
		dto.setMemGender(memberCommand.getMemGender());
		dto.setMemArea(memberCommand.getMemArea());
		dto.setMemPhone(memberCommand.getMemPhone());
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemEmailCk(memberCommand.getMemEmailCk());
		memberRepository.memUpdate(dto);
	}
}
