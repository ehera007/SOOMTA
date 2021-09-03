package service.employee;


import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import Model.FaqDTO;
import Model.LogInDTO;
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
	public void boardUpdate(FaqCommand faqCommand, HttpSession session) {
		FaqDTO dto = new FaqDTO();
		dto.setFaqCategory(faqCommand.getFaqCategory());
		dto.setFaqContents(faqCommand.getFaqContents());
		dto.setFaqCtgrS(faqCommand.getFaqCtgrS());
		dto.setFaqTitle(faqCommand.getFaqTitle());
		dto.setFaqNo(Long.parseLong(faqCommand.getFaqNo()));
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		dto.setEmpId(logIn.getUserId());
		
		String [] fileNames = faqCommand.getFileDel1().split(",");
		FaqDTO dto1 = employeeRepository.boardInfo(faqCommand.getFaqNo().toString());
				dto.setFaqImg(dto1.getFaqImg());
				String realPath = session.getServletContext()
						.getRealPath("WEB-INF/view/emp/board/uploadImg");
				String storeFile = ""; 
				if(!faqCommand.getFaqImg()[0].getOriginalFilename().equals("") ) {
					for(MultipartFile mf : faqCommand.getFaqImg()) {
						String original = mf.getOriginalFilename();
						String fileNameExt = original.substring(
								original.lastIndexOf("."));
						String store = 
								UUID.randomUUID().toString().replace("-", "")
								+fileNameExt;
						File file = new File(realPath + "/" + store);
						try {mf.transferTo(file);} 
						catch (Exception e) {e.printStackTrace();} 
						storeFile = storeFile + store + ","; 
					}
				}
				String faqImgName = dto1.getFaqImg();
				if(!fileNames[0].equals("")) {	
					for(String s : fileNames) {
						String delfile = s+ ",";
						faqImgName = faqImgName.replace(delfile,"");
						File file = new File(realPath + "/" + s);
						if(file.exists()) {file.delete();}
					}
					dto.setFaqImg(faqImgName);
				}
				if(dto.getFaqImg() != null) {
					dto.setFaqImg(storeFile + dto.getFaqImg());
				}else {
					dto.setFaqImg(storeFile);
				}
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
		dto.setTutorName(tutorCommand.getTutorName());
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
		employeeRepository.tutorProfileUpdate(dto);
	}
	
	
}
