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
		// 파일 수정
		String fileNames = tutorCommand.getDelFile();
		/// aaa,bbb,
		TutorDTO dto1 = // 디비 저장되어 있는 파일명을 가져 오기 위해서
				tutorRepository.promanage(tutorId);
		// 이미 저장되어 있는 이미지 파일명을 먼저 저장
		dto.setTutorImage(dto1.getTutorImage());
		// 파일 추가
		String store = fileNames;
		System.out.println(tutorCommand.getTutorImage().getOriginalFilename());
		if (!tutorCommand.getTutorImage().getOriginalFilename().equals("")) {
			MultipartFile mf = tutorCommand.getTutorImage();
			String original = mf.getOriginalFilename();
			String fileNameExt = original.substring(original.lastIndexOf("."));
			store = // 랜덤으로 문자열을 받아옴
					UUID.randomUUID().toString().replace("-", "") + fileNameExt;
			File file = new File(realPath + "/" + store);
			try {
				mf.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (!fileNames.equals("")) {
			// 디비에 있는 이미지 파일명을 제거
			// 이미지 파일이 변경된 경우 수정된 내용으로 다시 저장
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
