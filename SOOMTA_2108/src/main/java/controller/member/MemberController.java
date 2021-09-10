package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandCommand;
import command.ClassCommand;
import command.MemberCommand;
import command.PurchaseCommand;
import command.ReviewCommand;
import service.band.BandListService;
import service.band.BandNumberService;
import service.band.BandWriteService;
import service.class1.ClassCartService;
import service.class1.ClassWishListService;
import service.member.MemberClassConService;
import service.member.MemberClassDeleteService;
import service.member.MemberClassOrderList;
import service.member.MemberInfoSuJungService;
import service.member.MemberOutService;
import service.member.MemberPerDataService;
import service.member.MemberPurchaseOkService;
import service.member.MemberPwChangeConService;
import service.member.MemberPwUpdateService;
import service.member.MemberReviewConService;
import service.member.MemberSuJungService;
import service.member.ReviewWriteService;
import validator.MemberPasswordValidator;


@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
	MemberInfoSuJungService memberInfoSuJungService;
	
	@RequestMapping("myPage")//회원 마이페이지
	public String myPage(HttpSession session,Model model) {
		memberPerDataService.perData(model, session);
		return "member/myPage";
	}
	
	@Autowired
	MemberPerDataService memberPerDataService;
	@RequestMapping("perData")//개인정보
	public String perData(HttpSession session,Model model) {
		memberPerDataService.perData(model, session);
		return "member/perData";
	}
	
	@Autowired
	MemberSuJungService memberSuJungService;
	@RequestMapping(value="suJungOk", method = RequestMethod.POST)
	public String suJungOk(MemberCommand memberCommand,
			HttpSession session) {
		memberSuJungService.memUpdate(session,memberCommand);
		return "redirect:perData";
	}
	
	@RequestMapping("suJung")//개인정보 수정
	public String memSuJung(HttpSession session,Model model,
			@ModelAttribute MemberCommand memberCommand) {
		memberPerDataService.perData(model,session);
		return "member/suJung";
	}
	
	@RequestMapping("pwCon")//비번 변경전 현비번 확인
	public String memPwCon(HttpSession session,Model model) {
		memberPerDataService.perData(model,session);
		return "member/pwCon";
	}
	
	@Autowired 
	MemberPwUpdateService memberPwUpdateService;//비밀번호 변경 후 확인
	@RequestMapping(value="pwChangeCon", method = RequestMethod.POST)
	public String pwChangeCon(MemberCommand memberCommand,Errors errors,HttpSession session,
			Model model) {
		new MemberPasswordValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			memberPerDataService.perData(model,session);
			return "member/pwChange";
		}
		memberPwUpdateService.memPwUpdate(memberCommand,errors,session);
		memberPerDataService.perData(model,session);
		return "redirect:myPage";
	}
	
	@Autowired
	MemberPwChangeConService memberPwChangeConService;
	@RequestMapping("pwChange")//비번 변경//Model을 사용하여 에러보냄
	public String pwChange(
			@RequestParam(value="memPw") String memPw,
			HttpSession session, Model model,
			@ModelAttribute MemberCommand memberCommand
			) {//모델에 커맨드 객체 저장
		//@ModelAttribute값을 못받아 올때는 적어주고 값을 받아올때는 안적어줘도 상관 무
		memberPerDataService.perData(model,session);
		String path = memberPwChangeConService.memPwCon(memPw, session, model);
		return path;
	}
	
	@RequestMapping("outCon")//탈퇴
	public String memOutCon() {
		return "member/outCon";//탈퇴전 비밀번호 확인 폼
	}
	
	@Autowired
	MemberOutService memberOutService;
	@RequestMapping("memOutOk")//탈퇴시 이동 주소
	public String memOutOk(
			@RequestParam(value="memPw") String memPw,
			HttpSession session, Model model){
		String path = memberOutService.memOut(memPw, session, model);
		return path;
	}

	@Autowired
	MemberClassOrderList memberClassOrderList;
	@RequestMapping("myClassList")//내 강의목록
	public String myClass(HttpSession session, Model model) {
		memberClassOrderList.classOrderList(session, model);
		memberPerDataService.perData(model,session);
		return "member/myClassList";
	}
	
	@Autowired
	MemberClassConService memberClassConService;
	@RequestMapping("classCon")//강의 확인
	public String classCon(
			@ModelAttribute(value="purchaseNo") String purchaseNo,
			@ModelAttribute(value="classNo") String classNo,
			Model model) {
		memberClassConService.classCon(classNo, model);
		return "member/classCon";
	}
	
	
	@Autowired
	MemberClassDeleteService memberClassDeleteService;
	@RequestMapping("classDel")//강의 삭제
	public String classDel(@RequestParam(value="purchaseNo")String purchaseNo) {
		memberClassDeleteService.classDel(purchaseNo);
		return "redirect:myClassList";
	}
	
	@Autowired
	MemberReviewConService memberReviewConService;
	@RequestMapping("classReviewCon")//강의 후기확인
	public String classReviewCon(String classNo,Model model,String purchaseNo) {
		memberClassConService.classCon(classNo, model);
		memberReviewConService.reviewCon(purchaseNo,model);
		return "member/classReviewCon";
	}
	
	@Autowired
	ReviewWriteService reviewWriteService;
	@RequestMapping(value = "classReview", method = RequestMethod.POST)
	public String classReview(ReviewCommand reviewCommand,HttpSession session) {
		reviewWriteService.reviewWrite(reviewCommand,session);
		return "redirect:myClassList";
	}
	
	@RequestMapping(value= "classReview", method = RequestMethod.GET)//강의 후기작성
	public String classReview(
			@ModelAttribute(value="purchaseNo") String purchaseNo,
			@ModelAttribute(value="classNo") String classNo,
			@ModelAttribute(value="tutorId") String tutorId,
			Model model) {
		memberClassConService.classCon(classNo, model);
		return "member/classReview";
	}
	
	@Autowired
	ClassWishListService classWishListService;
	@RequestMapping("wishClass")//찜한강의
	public String wishClass(HttpSession session, Model model) {
		memberPerDataService.perData(model, session);
		classWishListService.wishClass(session, model);
		
		return "member/wishClass";
	}
		
	
	@RequestMapping("wishBand")
	public String wishBand() {
		return "member/wishBand";
	}
	
	@Autowired
	BandListService BandListService;
	@RequestMapping("bandList")//내 모임 목록
	public String bandList(Model model,HttpSession session) {
		BandListService.bandList(model, session);
		BandListService.joinBandList(model, session);
		memberPerDataService.perData(model,session);
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
	@RequestMapping("bandOpen")//모임 개설 주소
	public String bandOpen(Model model) {
		bandNumberService.bandNo(model);
		return "member/bandJoin";
	}
	
	@Autowired
	ClassCartService classCartService;
	@RequestMapping("classCart")//강의결제페이지
	public String classCart(@RequestParam(value="classNo") String classNo, Model model) {
		classCartService.classCart(classNo, model);
		return "member/classCart";
	}
	
	@Autowired
	MemberPurchaseOkService memberPurchaseOkService;
	@RequestMapping(value="classCartOk", method = RequestMethod.POST)//강의결제확인페이지
	public String classCartCk(PurchaseCommand purchaseCommand, HttpSession session, Model model) {
		memberPurchaseOkService.purchaseOk(purchaseCommand, session, model); //결제번호 랜덤 생성
		return "member/classCartCk";
	}
	
}
