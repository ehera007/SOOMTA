package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.BandCommand;
import service.band.BandListService;
import service.band.BandNumberService;
import service.band.BandWriteService;
import service.member.MemberPerDataService;


@Controller
@RequestMapping("member")
public class MemberController {
	
	@RequestMapping("joinOk")//회원등록 완료 후 확인 페이지
	public String joinOk() {
		return "member/joinOk";
	}
	
	@RequestMapping("myPage")//회원 마이페이지
	public String myPage() {
		return "member/myPage";
	}
	
	@Autowired
	MemberPerDataService memberPerDataService;
	@RequestMapping("perData")//개인정보
	public String memPerInfo(HttpSession session,Model model) {
		memberPerDataService.memPerInfo(model, session);
		return "member/perData";
	}
	
	@RequestMapping("suJung")//개인정보 수정
	public String memSuJung() {
		return "member/suJung";
	}
	
	@RequestMapping("pwCon")//비번 변경전 현비번 확인
	public String memPwCon() {
		return "member/pwCon";
	}
	@RequestMapping("pwChange")//비번 변경
	public String pwChange() {
		return "member/pwChange";
	}
	
	@RequestMapping("outCon")//탈퇴
	public String memOutCon() {
		return "member/outCon";//탈퇴전 비밀번호 확인 폼
	}

	@RequestMapping("myClassList")//내 강의목록
	public String myClass() {
		return "member/myClassList";
	}
	@RequestMapping("classCon")//강의 확인
	public String classCon() {
		return "member/classCon";
	}
	
	@RequestMapping("classReview")//강의 후기작성
	public String classReview() {
		return "member/classReview";
	}
	
	@RequestMapping("wishClass")//찜한강의
	public String wishClass() {
		return "member/wishClass";
	}
		
	@RequestMapping("wishBand")//찜한 모임
	public String wishBand() {
		return "member/wishBand";
	}
	
	@Autowired
	BandListService bandListService;
	@RequestMapping("bandList")//내 모임 목록
	public String bandList(Model model) {
		bandListService.bandList(model);
		return "member/bandList";
	}
	
	@Autowired
	BandWriteService bandWriteService;
	@RequestMapping(value="bandJoin", method = RequestMethod.POST)
	public String bandJoin(BandCommand bandCommand,//밴드 생성
			HttpSession session) {
		bandWriteService.bandWrite(bandCommand,session);
		return "redirect:bandList";
	}
	
	@Autowired
	BandNumberService bandNumberService;//밴드 시퀀스 
	@RequestMapping("bandOpen")//모임 개설
	public String bandOpen(Model model) {
		bandNumberService.bandNo(model);
		return "member/bandJoin";
	}

	@RequestMapping("classCart")//강의결제페이지
	public String classCart() {
		return "member/classCart";
	}
	
	@RequestMapping("classCartCk")//강의결제확인페이지
	public String classCartCk() {
		return "member/classCartCk";
	}
	
}
