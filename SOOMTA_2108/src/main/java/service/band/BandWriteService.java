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
		System.out.println("번호"+bandCommand.getBandNo());
		
		dto.setBandCategoryL(bandCommand.getBandCategoryL());
		System.out.println("카테큰"+bandCommand.getBandCategoryL());
		dto.setBandCategoryS(bandCommand.getBandCategoryS());
		System.out.println("카테작"+bandCommand.getBandCategoryS());
		dto.setBandName(bandCommand.getBandName());
		System.out.println("이름"+bandCommand.getBandName());
		dto.setBandGender(bandCommand.getBandGender());
		System.out.println("성별"+bandCommand.getBandGender());
		dto.setBandAge(bandCommand.getBandAge());
		System.out.println("나이"+bandCommand.getBandAge());
		dto.setBandWay(bandCommand.getBandWay());
		System.out.println("대면방식"+bandCommand.getBandWay());
		dto.setBandTotal(bandCommand.getBandTotal());
		System.out.println("총인원"+bandCommand.getBandTotal());
		dto.setBandPublic(bandCommand.getBandPublic());
		System.out.println("공비공"+bandCommand.getBandPublic());
		dto.setBandIntroduce(bandCommand.getBandIntroduce());
		System.out.println("소개"+bandCommand.getBandIntroduce());
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
