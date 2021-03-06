package service.tutor;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.multipart.MultipartFile;

import Model.LogInDTO;
import Model.TutorDTO;
import command.TutorCommand;
import repository.TutorRepository;

public class TutorUpdateService {
	@Autowired
	TutorRepository tutorRepository;
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void perDataUpdate(TutorCommand tutorCommand, HttpSession session) {
		
		TutorDTO dto = new TutorDTO();
		dto.setTutorId(tutorCommand.getTutorId());
		dto.setTutorName(tutorCommand.getTutorName());
		dto.setTutorDob(tutorCommand.getTutorDob());
		dto.setTutorPhone(tutorCommand.getTutorPhone());
		dto.setTutorEmail(tutorCommand.getTutorEmail());
		dto.setTutorGender(tutorCommand.getTutorGender());
		
		tutorRepository.perDataUpdate(dto);
	}
	
	
public void promanageSujung(TutorCommand tutorCommand, HttpSession session) {
		
		
		String realPath = session.getServletContext().getRealPath("WEB-INF/view/tutor/upload");
		System.out.println("realPath : " + realPath);
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
	    String tutorId = logIn.getUserId();
	      
	    TutorDTO dto = new TutorDTO();
	      
	    dto.setTutorId(tutorId);
		
		dto.setTutorLikearea(tutorCommand.getTutorLikearea());
		System.out.println(tutorCommand.getTutorLikearea());

		dto.setTutorRespond(tutorCommand.getTutorRespond());
		System.out.println(tutorCommand.getTutorRespond());

		dto.setTutorCareer(tutorCommand.getTutorCareer());
		System.out.println(tutorCommand.getTutorCareer());

		dto.setTutorCertification(tutorCommand.getTutorCertification());
		System.out.println(tutorCommand.getTutorCertification());

		dto.setTutorFinalEdu(tutorCommand.getTutorFinalEdu());
		System.out.println(tutorCommand.getTutorFinalEdu());

		dto.setTutorIntroduce(tutorCommand.getTutorIntroduce());
		System.out.println(tutorCommand.getTutorIntroduce());
		// ?????? ??????
		String fileNames = tutorCommand.getDelFile();
		/// aaa,bbb,
		TutorDTO dto1 = // ?????? ???????????? ?????? ???????????? ?????? ?????? ?????????
				tutorRepository.promanage(tutorId);
		// ?????? ???????????? ?????? ????????? ???????????? ?????? ??????
		dto.setTutorImage(dto1.getTutorImage());
		// ?????? ??????
		String store = fileNames;
		System.out.println(tutorCommand.getTutorImage().getOriginalFilename());
		if (!tutorCommand.getTutorImage().getOriginalFilename().equals("")) {
			MultipartFile mf = tutorCommand.getTutorImage();
			String original = mf.getOriginalFilename();
			String fileNameExt = original.substring(original.lastIndexOf("."));
			store = // ???????????? ???????????? ?????????
					UUID.randomUUID().toString().replace("-", "") + fileNameExt;
			File file = new File(realPath + "/" + store);
			try {
				mf.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (!fileNames.equals("")) {
			// ????????? ?????? ????????? ???????????? ??????
			// ????????? ????????? ????????? ?????? ????????? ???????????? ?????? ??????
			File file = new File(realPath + "/" + fileNames);
			if (file.exists()) {
				file.delete();
			}
		}
		
		
		
		dto.setTutorImage(store);
		System.out.println("dto.getTutorImage()" + dto.getTutorImage());
		tutorRepository.promanageSujung(dto);
	}

}