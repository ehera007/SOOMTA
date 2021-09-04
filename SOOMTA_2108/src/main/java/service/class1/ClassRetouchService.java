package service.class1;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.ClassDTO;
import command.ClassCommand;
import repository.ClassRepository;

public class ClassRetouchService {
	@Autowired
	ClassRepository classRepository;
	public void classRetouch(ClassCommand classCommand, HttpSession session) {
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
		
		ClassDTO dto1 = classRepository.classDetail(classCommand.getClassNo().toString());
		dto.setClassImg(dto1.getClassImg());
		
		/* 이미지 수정 보류
		String [] fileName = classCommand.getFileDel().split(",");
		ClassDTO dto1 = classRepository.classDetail(classCommand.getClassNo().toString());
		dto.setClassImg(dto1.getClassImg());
		String realPath = session.getServletContext().getRealPath("WEB-INF/view/tutor/upload");
		String storeFile = ""; 
		if(!classCommand.getClassImg()[0].getOriginalFilename().equals("") ) {
			for(MultipartFile mf : classCommand.getClassImg()) {
				String original = mf.getOriginalFilename();
				String fileNameExt = original.substring(
						original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + fileNameExt;
				File file = new File(realPath + "/" + store);
				try {mf.transferTo(file);} 
				catch (Exception e) {e.printStackTrace();} 
				storeFile = storeFile + store + ","; 
			}
		}
		
		String classFileName = dto1.getClassImg();
		if(!fileName[0].equals("")) {	
			for(String s : fileName) {
				String delfile = s+ ",";
				classFileName = classFileName.replace(delfile,"");
				File file = new File(realPath + "/" + s);
				if(file.exists()) {file.delete();}
			}
			dto.setClassImg(classFileName);
		}
		if(dto.getClassImg() != null) {
			dto.setClassImg(storeFile + dto.getClassImg());
		}else {
			dto.setClassImg(storeFile);
		}*/
		classRepository.classRetouch(dto);
	}	
}
