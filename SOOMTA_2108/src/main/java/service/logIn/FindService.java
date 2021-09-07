package service.logIn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import Model.MemberDTO;
import Model.TutorDTO;
import command.IdPwFindeCommand;
import controller.main.RandomPw;
import repository.EmployeeRepository;
import repository.LogInRepository;

public class FindService {
	@Autowired
	LogInRepository logInRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	EmployeeRepository employeeRepository;
	public void idFind(IdPwFindeCommand idPwCommand, Model model) {
		String memId = null;
		String tutorId = null;
		if(idPwCommand.getType().equals("mem")) {
			MemberDTO dto = new MemberDTO();
			dto.setMemEmail(idPwCommand.getEmail());
			dto.setMemDob(idPwCommand.getBirth());
			dto.setMemName(idPwCommand.getName());
			memId = logInRepository.mIdFind(dto);
			model.addAttribute("memId", memId);
		}else if(idPwCommand.getType().equals("tutor")) {
			TutorDTO dto1 = new TutorDTO();
			dto1.setTutorEmail(idPwCommand.getEmail());
			dto1.setTutorDob(idPwCommand.getBirth());
			dto1.setTutorName(idPwCommand.getName());
			tutorId = logInRepository.tIdFind(dto1);
			model.addAttribute("tutorId", tutorId);
		}
	}
	
	public void pwFind(IdPwFindeCommand idPwCommand, Model model) {
		if(idPwCommand.getType().equals("mem")) {
			MemberDTO dto = employeeRepository.memInfo(idPwCommand.getId());
			if(dto != null && idPwCommand.getEmail().equals(dto.getMemEmail())) {
					String newPw = RandomPw.newRandomPw(8);
					String encodPw = bCryptPasswordEncoder.encode(newPw);
					dto.setMemPw(encodPw);
					employeeRepository.memPwUpdate(dto);
					model.addAttribute("memPw", newPw);
					model.addAttribute("Mdto", dto);
			}
		}else if(idPwCommand.getType().equals("tutor")) {
			TutorDTO dto1 = employeeRepository.tutorInfo(idPwCommand.getId());
			if(dto1 != null && idPwCommand.getEmail().equals(dto1.getTutorEmail())) {
					String newTPw = RandomPw.newRandomPw(8);
					String encodTPw = bCryptPasswordEncoder.encode(newTPw);
					dto1.setTutorPw(encodTPw);
					employeeRepository.tutorPwUpdate(dto1);
					model.addAttribute("tutorPw", newTPw);
					model.addAttribute("Tdto", dto1);
			}
		}
	}
}
