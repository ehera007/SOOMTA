package service.class1;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.ClassDTO;
import Model.LogInDTO;
import Model.TutorAuthInfoDTO;
import Model.TutorDTO;
import command.ClassCommand;
import repository.ClassRepository;
import repository.TutorRepository;


public class ClassOpenService {
	@Autowired
	ClassRepository classRepository;
	public void classOpen(ClassCommand classCommand, HttpSession session) {
		ClassDTO dto = new ClassDTO();
		dto.setClassCategoryL(classCommand.getClassCategoryL());
		dto.setClassCategoryS(classCommand.getClassCategoryS());
		dto.setClassName(classCommand.getClassName());
		dto.setClassStart(classCommand.getClassStart());
		dto.setClassEnd(classCommand.getClassEnd());
		dto.setClassTotal(classCommand.getClassTotal());
		dto.setClassPrice(classCommand.getClassPrice());
		dto.setClassWay(classCommand.getClassWay());
		dto.setClassGender(classCommand.getClassGender());
		dto.setClassIntroduce(classCommand.getClassIntroduce());
		dto.setClassNo(classCommand.getClassNo());
		dto.setClassArea(classCommand.getClassArea());
		dto.setClassCity(classCommand.getClassCity());
			
		String classImg= "";
			for(MultipartFile mf : classCommand.getClassImg()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-","") + originalExt;
				classImg += store + ",";
				String realPath = session.getServletContext().getRealPath("WEB-INF/view/tutor/upload");
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} 
				catch (Exception e) {
					e.printStackTrace();
				}
			dto.setClassImg(classImg);
		}
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String tutorId = logIn.getUserId();
		System.out.println(tutorId);
		dto.setTutorId(tutorId);
			
		classRepository.classOpen(dto);
	}
}
