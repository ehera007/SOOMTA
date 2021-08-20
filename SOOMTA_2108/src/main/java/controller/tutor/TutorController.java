package controller.tutor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
@RequestMapping("tutor")
public class TutorController {
	
	@RequestMapping("myPage")//튜터 마이페이지
	public String myPage() {
		return "tutor/myPage";
	}
	
	@RequestMapping("out")//튜터 탈퇴하기 페이지
	public String out() {
		return "tutor/out";
	}
	
	@RequestMapping("perData")//튜터 개인정보 페이지
	public String perData() {
		return "tutor/perData";
	}
	@RequestMapping("promanage")//튜터 프로필 관리 페이지
	public String promanage() {
		return "tutor/promanage";
	}
	@RequestMapping("pwChange")//튜터 비번 변경 페이지
	public String pwChange() {
		return "tutor/pwChange";
	}
	
	@RequestMapping("pwCon")//튜터 비번 확인 페이지
	public String pwCon() {
		return "tutor/pwCon";
	}
	@RequestMapping("promanageSujung")//튜터 개인정보 수정 페이지
	public String promanageSujung() {
		return "tutor/promanageSujung";
	}
	@RequestMapping("sujung")//튜터 개인정보 수정 페이지
	public String sujung() {
		return "tutor/sujung";
	}
	@RequestMapping("sujungOk")//튜터 개인정보 수정 페이지
	public String sujungOk() {
		return "tutor/sujungOk";
	}
	@RequestMapping("joinForm")//튜터 등록 페이지
	public String joinForm() {
		return "tutor/joinForm";
	}
	@RequestMapping("promanageSujungOk")//튜터 개인정보 수정 페이지(완료)
	public String promanageSujungOk() {
		return "tutor/promanageSujungOk";
	}
	@RequestMapping("outOk")//튜터 개인정보 수정 페이지(완료)
	public String outOk() {
		return "tutor/outOk";
	}
	@RequestMapping("MylectureList")
	public String MylectureList() {
		return "tutor/MylectureList";
	}
	@RequestMapping("newClassOpened")
	public String newClassOpened() {
		return "tutor/newClassOpened";
	}
	@RequestMapping("reviewView")
	public String reviewView() {
		return "tutor/reviewView";
	}
	@RequestMapping("newClassCheck")
	public String newClassCheck() {
		return "tutor/newClassCheck";
	}
	@RequestMapping("classRetouch")
	public String classRetouch() {
		return "tutor/classRetouch";
	}
	@RequestMapping("classRetouchCheck")
	public String classRetouchCheck() {
		return "tutor/classRetouchCheck";
	}
}