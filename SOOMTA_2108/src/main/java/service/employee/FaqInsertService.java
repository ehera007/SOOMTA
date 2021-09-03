package service.employee;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.FaqDTO;
import Model.LogInDTO;
import command.FaqCommand;
import repository.EmployeeRepository;

public class FaqInsertService {
	@Autowired
	EmployeeRepository employeeRepository;
	public void boardInsert(FaqCommand faqCommand, HttpSession session) {
		FaqDTO dto = new FaqDTO();
		dto.setFaqNo(Long.parseLong(faqCommand.getFaqNo()));
		dto.setFaqCategory(faqCommand.getFaqCategory());
		dto.setFaqCtgrS(faqCommand.getFaqCtgrS());
		dto.setFaqTitle(faqCommand.getFaqTitle());
		dto.setFaqContents(faqCommand.getFaqContents());
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		dto.setEmpId(logIn.getUserId());
		
		String FaqImg= "";
		if(!faqCommand.getFaqImg()[0].getOriginalFilename().equals("")) {
			for(MultipartFile mf : faqCommand.getFaqImg()) {
				String original = mf.getOriginalFilename();
				String originalExt = 
						original.substring(original.lastIndexOf("."));
				String store = 
						UUID.randomUUID().toString().replace("-","")
						+originalExt;
				FaqImg += store + ",";
				String realPath = 
						session.getServletContext()
						       .getRealPath("WEB-INF/view/emp/board/uploadImg");
				File file = new File(realPath + "/" + store);
				try {mf.transferTo(file);} 
				catch (Exception e) {e.printStackTrace();} 
			}
			dto.setFaqImg(FaqImg);
		}
		employeeRepository.faqInsert(dto);
	}
}
