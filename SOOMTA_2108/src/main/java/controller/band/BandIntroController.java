package controller.band;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.band.BandIntroService;
import service.band.BandWishListService;
import service.band.BandWishService;
import service.member.MemberPerDataService;

@Controller
@RequestMapping("band")
public class BandIntroController {
	@Autowired
	BandIntroService bandIntroService;
	@Autowired
	BandWishService bandWishService;
	@Autowired
	BandWishListService bandWishListService;
	@Autowired
	MemberPerDataService memberPerDataService;
	@RequestMapping("bandIntro") //클래스 상세보기 페이지
	public String bandIntro(@RequestParam(value="bandNo") Long bandNo, Model model, HttpSession session) {
		System.out.println(" jcsbvsv");
		bandIntroService.bandIntro(bandNo, model, session);
		return "band/bandIntro";
	}
	@RequestMapping("wish")
	public String wish(@RequestParam(value="bandNo")Long bandNo, Model model, HttpSession session) {
		bandWishService.bandWish(bandNo, session, model);
		return "band/wishOk";
	}
}