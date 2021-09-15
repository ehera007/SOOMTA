package service.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.BandWishDTO;
import Model.LogInDTO;
import repository.BandDetailRepository;


public class BandDetailService {
	@Autowired
	BandDetailRepository bandDetailRepository;
	
	public String bandDetail(HttpSession session, Model model, Long bandNo) {
		String userId = ((LogInDTO)session.getAttribute("logIn")).getUserId();
		BandDTO dto = new BandDTO();
		dto.setBandNo(bandNo);
		dto.setMemId(userId); // 관리 구분 아님, 로그인 사용자 저장
		/// 로그인 사용자가 개설자인 경우\
		BandDTO dto1 = bandDetailRepository.bandDetail(dto);
		/// 로그인사용자가 화원
		BandWishDTO bandWishDTO = bandDetailRepository.bandDetail1(dto);
		BandDTO bandDTO = bandDetailRepository.band(bandNo);
		int count = bandDetailRepository.countBank(dto);
		model.addAttribute("bandDTO", bandDTO);
		System.out.println("count : " + count);
		if (dto1 != null ) return "band/bandDetailHomeMgr"; //관리자
		if (bandWishDTO != null)return "band/bandDetailHome"; //일반회원
		if (bandWishDTO == null && bandDTO == null) return "band/bandDetail"; //비회원
		if(count == 1) return "band/bandDetailHome";
		return null;
	}
	public void  bandDetail(Long bandNo,Model model) {
		BandDTO bandDTO = bandDetailRepository.band(bandNo);
		model.addAttribute("dto", bandDTO);
	}
}