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
	public void bandWrite(BandCommand bandCommand,HttpSession session) {
		BandDTO dto = new BandDTO();
		dto.setBandNo(bandCommand.getBandNo());//밴드 시퀀스
		
		dto.setBandCategoryL(bandCommand.getBandCategoryL());//밴드 카테고리 대
		dto.setBandCategoryS(bandCommand.getBandCategoryS());//소
		dto.setBandName(bandCommand.getBandName());//밴드 이름
		dto.setBandGender(bandCommand.getBandGender());//성별
		dto.setBandAge(bandCommand.getBandAge());//나이
		dto.setBandWay(bandCommand.getBandWay());//밴드 모임방식
		dto.setBandTotal(bandCommand.getBandTotal());//밴드 최대인원
		dto.setBandPublic(bandCommand.getBandPublic());//밴드 공개여부
		dto.setBandIntroduce(bandCommand.getBandIntroduce());//밴드 소개
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
