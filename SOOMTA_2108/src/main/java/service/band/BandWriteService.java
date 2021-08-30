package service.band;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import Model.BandDTO;
import Model.LogInDTO;
import command.BandCommand;
import repository.BandRepository;

public class BandWriteService {
	@Autowired
	BandRepository bandRepository;
	public void bandWrite(BandCommand bandCommand,
			HttpSession session) {
		BandDTO dto = new BandDTO();
		dto.setBandNo(bandCommand.getBandNo());
		
		dto.setBandCategoryL(bandCommand.getBandCategoryL());
		dto.setBandCategoryS(bandCommand.getBandCategoryS());
		dto.setBandName(bandCommand.getBandName());
		dto.setBandGender(bandCommand.getBandGender());
		dto.setBandAge(bandCommand.getBandAge());
		dto.setBandWay(bandCommand.getBandWay());
		dto.setBandTotal(bandCommand.getBandTotal());
		dto.setBandPublic(bandCommand.getBandPublic());
		dto.setBandIntroduce(bandCommand.getBandIntroduce());
		dto.setBandRegiDay(bandCommand.getBandRegiDay());//수정 전 작성x
		System.out.println("등록날짜"+bandCommand.getBandRegiDay());
		
		LogInDTO logIn = (LogInDTO)session.getAttribute("logIn");
		dto.setMemId(logIn.getUserId());
		System.out.println("아이디"+logIn.getUserId());//수정 전 grade
		//이미지 저장
		String BandImg = "";
		for(MultipartFile mf : bandCommand.getBandImg()) {
			String original = mf.getOriginalFilename();
			String originalExt = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-","")+ originalExt;
			BandImg += store + ",";
			String filePath = session.getServletContext().
					getRealPath("WEB-INF/view/member/upload");
			File file = new File(filePath +"/"+ store);
			try {
				mf.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setBandImg(BandImg);
		}
		bandRepository.bandWrite(dto);
		System.out.println("파일"+bandCommand.getBandImg());
		
		
	}
}
