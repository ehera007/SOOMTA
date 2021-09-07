package service.class1;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.ClassDTO;
import repository.ClassRepository;

public class ClassDeleteService {
	@Autowired
	ClassRepository classRepository;
	public void classDelete(String classNo, HttpSession session) {
		ClassDTO dto = classRepository.classDetail(classNo);
		if(dto.getClassImg() != null) {
			String [] fileNames = dto.getClassImg().split(",");
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/tutor/upload");
			if(fileNames != null  && !fileNames[0].equals("")) {
				for(String fileName : fileNames) {
					File file = new File(realPath + "/" + fileName);
					if(file.exists()) {
						file.delete();
					}
				}
			}
		}
		if(dto.getClassImg2() != null) {
			String [] fileNames = dto.getClassImg2().split(",");
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/tutor/upload");
			if(fileNames != null  && !fileNames[0].equals("")) {
				for(String fileName : fileNames) {
					File file = new File(realPath + "/" + fileName);
					if(file.exists()) {
						file.delete();
					}
				}
			}
		}
		classRepository.classDelete(classNo);
	}
}