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
		System.out.println("1"+dto.getClassCategoryL());
		dto.setClassCategoryS(classCommand.getClassCategoryS());
		System.out.println("2"+dto.getClassCategoryS());
		dto.setClassName(classCommand.getClassName());
		System.out.println("3"+dto.getClassName());
		dto.setClassStart(classCommand.getClassStart());
		System.out.println("4"+dto.getClassStart());
		dto.setClassEnd(classCommand.getClassEnd());
		System.out.println("5"+dto.getClassEnd());
		dto.setClassTotal(classCommand.getClassTotal());
		System.out.println("6"+dto.getClassTotal());
		dto.setClassPrice(classCommand.getClassPrice());
		System.out.println("7"+dto.getClassPrice());
		dto.setClassWay(classCommand.getClassWay());
		System.out.println("8"+dto.getClassWay());
		dto.setClassGender(classCommand.getClassGender());
		System.out.println("9"+dto.getClassGender());
		dto.setClassIntroduce(classCommand.getClassIntroduce());
		System.out.println("10"+dto.getClassIntroduce());
		dto.setClassNo(classCommand.getClassNo());
		System.out.println("11"+dto.getClassNo());
			
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
			System.out.println("11"+ dto.getClassImg());
		}
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		String tutorId = logIn.getUserId();
		System.out.println(tutorId);
		dto.setTutorId(tutorId);
			
		classRepository.classOpen(dto);
	}
}
