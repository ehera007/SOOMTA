package service.employee;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import Model.FaqDTO;
import Model.MemberDTO;
import Model.TutorDTO;
import command.FaqCommand;
import command.MemberCommand;
import command.TutorCommand;
import repository.EmployeeRepository;

public class UpdateService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void boardUpdate(FaqCommand faqCommand) {
		FaqDTO dto = new FaqDTO();
		dto.setEmpId(faqCommand.getEmpId());
		dto.setFaqCategory(faqCommand.getFaqCategory());
		dto.setFaqContents(faqCommand.getFaqContents());
		dto.setFaqCtgrS(faqCommand.getFaqCtgrS());
		//dto.setFaqImg(faqCommand.getFaqImg());
		dto.setFaqTitle(faqCommand.getFaqTitle());
		employeeRepository.boardUpdate(dto);
		}
	
	public void memPwUpdate(MemberCommand memberCommand, Errors errors) {
		MemberDTO dto = new MemberDTO();
		dto.setMemId(memberCommand.getMemId());
		if(memberCommand.isMemPwConEq()) {
			dto.setMemPw(bCryptPasswordEncoder.encode(memberCommand.getMemPw()));
			employeeRepository.memPwUpdate(dto);
		}else {
			errors.rejectValue("memPwCon", "nomatch");
		}
	}
	public void tutorPwUpdate(TutorCommand tutorCommand, Errors errors) {
		TutorDTO dto = new TutorDTO();
		dto.setTutorId(tutorCommand.getTutorId());
		if(tutorCommand.isTutorPwConEq()) {
			dto.setTutorPw(bCryptPasswordEncoder.encode(tutorCommand.getTutorPw()));
			employeeRepository.tutorPwUpdate(dto);
		}else {
			errors.rejectValue("tutorPwCon", "nomatch");
		}
	}
	public void memUpdate(MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		dto.setMemArea(memberCommand.getMemArea());
		dto.setMemDob(memberCommand.getMemDob());
		dto.setMemEmail(memberCommand.getMemEmail());
		dto.setMemEmailCk(memberCommand.getMemEmailCk());
		dto.setMemGender(memberCommand.getMemGender());
		dto.setMemId(memberCommand.getMemId());
		dto.setMemName(memberCommand.getMemName());
		dto.setMemPhone(memberCommand.getMemPhone());
		employeeRepository.memUpdate(dto);
	}
	public void tutorUpdate(TutorCommand tutorCommand) {
		TutorDTO dto = new TutorDTO();
		dto.setTutorId(tutorCommand.getTutorId());
		dto.setTutorArea(tutorCommand.getTutorArea());
		dto.setTutorDob(tutorCommand.getTutorDob());
		dto.setTutorGender(tutorCommand.getTutorGender());
		dto.setTutorPhone(tutorCommand.getTutorPhone());
		dto.setTutorEmail(tutorCommand.getTutorEmail());
		dto.setTutorEmailCk(tutorCommand.getTutorEmailCk());
		dto.setTutorEmailOk(tutorCommand.getTutorEmailOk());
		employeeRepository.tutorUpdate(dto);
	}
	public void tutorProfileUpdate(TutorCommand tutorCommand) {
		TutorDTO dto = new TutorDTO();
		dto.setTutorId(tutorCommand.getTutorId());
		dto.setTutorCertification(tutorCommand.getTutorCertification());
		dto.setTutorCareer(tutorCommand.getTutorCareer());
		dto.setTutorFinalEdu(tutorCommand.getTutorFinalEdu());
		dto.setTutorRespond(tutorCommand.getTutorRespond());
		dto.setTutorLikearea(tutorCommand.getTutorLikearea());
		dto.setTutorIntroduce(tutorCommand.getTutorIntroduce());
		//dto.setTutorImage(tutorCommand.getTutorImage());
		employeeRepository.tutorProfileUpdate(dto);
	}
	
	
}
