package controller.tutor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
@RequestMapping("tutor")
public class TutorController {
	@RequestMapping("myPage")//튜터 마이페이지
	public String tutorMyPage() {
		return "tutor/tutorMyPage";
	}
	
	@RequestMapping("tutorOut")//튜터 탈퇴하기 페이지
	public String tutorOut() {
		return "tutor/tutorOut";
	}
	
	@RequestMapping("tutorPerData")//튜터 개인정보 페이지
	public String tutorPerData() {
		return "tutor/tutorPerData";
	}
	@RequestMapping("tutorPromanage")//튜터 프로필 관리 페이지
	public String tutorPromanage() {
		return "tutor/tutorPromanage";
	}
	@RequestMapping("tutorPwChange")//튜터 비번 변경 페이지
	public String tutorPwChange() {
		return "tutor/tutorPwChange";
	}
	
	@RequestMapping("tutorPwCon")//튜터 비번 확인 페이지
	public String tutorPwCon() {
		return "tutor/tutorPwCon";
	}
	@RequestMapping("tutorPromanageSujung")//튜터 개인정보 수정 페이지
	public String tutorPromanageSujung() {
		return "tutor/tutorPromanageSujung";
	}
	@RequestMapping("tutorSujung")//튜터 개인정보 수정 페이지
	public String tutorSujung() {
		return "tutor/tutorSujung";
	}
	@RequestMapping("tutorSujungOk")//튜터 개인정보 수정 페이지
	public String tutorSujungOk() {
		return "tutor/tutorSujungOk";
	}
	@RequestMapping("tutorJoinOk")//튜터 등록 완료 후 환영 페이지
	public String tutorJoinOk() {
		return "tutor/tutorJoinOk";
	}
	@RequestMapping("tutorPromanageSujungOk")//튜터 개인정보 수정 페이지(완료)
	public String tutorPromanageSujungOk() {
		return "tutor/tutorPromanageSujungOk";
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