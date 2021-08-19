package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@RequestMapping("joinOk")//회원등록 완료 후 확인 페이지
	public String joinOk() {
		return "member/memJoinOk";
	}
	
	@RequestMapping("myPage")//회원 마이페이지
	public String myPage() {
		return "member/memMyPage";
	}
	
	@RequestMapping("perData")//개인정보
	public String perData() {
		return "member/memPerData";
	}
	@RequestMapping("memSuJung")//개인정보 수정
	public String memSuJung() {
		return "member/memSuJung";
	}
	
	@RequestMapping("memPwCon")//비번 변경전 현비번 확인
	public String memPwCon() {
		return "member/memPwCon";
	}
	@RequestMapping("memPwChange")//비번 변경
	public String pwChange() {
		return "member/memPwChange";
	}
	
	@RequestMapping("memOutCon")//탈퇴전 비번확인
	public String memOutCon() {
		return "member/memOutCon";
	}

	@RequestMapping("myClassList")//내 강의목록
	public String myClass() {
		return "member/memMyClassList";
	}
	@RequestMapping("classCon")//강의 확인
	public String classCon() {
		return "member/memClassCon";
	}
	
	@RequestMapping("classReview")//강의 후기작성
	public String classReview() {
		return "member/memClassReview";
	}
	
	@RequestMapping("wishClass")//찜한강의
	public String wishClass() {
		return "member/memWishClass";
	}
	@RequestMapping("bandList")//내 모임 목록
	public String bandList() {
		return "member/memBandList";
	}
	@RequestMapping("wishBand")//찜한 모임
	public String wishBand() {
		return "member/memWishBand";
	}
	@RequestMapping("bandOpen")//모임 개설
	public String bandOpen() {
		return "member/memBandOpen";
	}

	@RequestMapping("classCart")//강의결제페이지
	public String classCart() {
		return "member/classCart";
	}
	
}
