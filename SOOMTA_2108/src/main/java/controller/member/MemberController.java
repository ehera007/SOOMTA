package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("perData")//개인정보
	public String perData() {
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
	
	@RequestMapping("outCon")//탈퇴전 비번확인
	public String memOutCon() {
		return "member/outCon";
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
	@RequestMapping("bandList")//내 모임 목록
	public String bandList() {
		return "member/bandList";
	}
	@RequestMapping("wishBand")//찜한 모임
	public String wishBand() {
		return "member/wishBand";
	}
	@RequestMapping("bandOpen")//모임 개설
	public String bandOpen() {
		return "member/bandOpen";
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
