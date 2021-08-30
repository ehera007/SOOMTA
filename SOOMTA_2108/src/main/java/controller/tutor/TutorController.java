package controller.tutor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import command.TutorCommand;
import repository.TutorRepository;
import service.employee.EmployeeUpdateService;
import service.tutor.TutorInfoService;

import service.tutor.TutorOutService;
import service.tutor.TutorPromanageService;
import service.tutor.TutorPwChangeService;
import service.tutor.TutorUpdateService;





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
	@RequestMapping("joinForm")//튜터 등록 페이지
	public String joinForm() {
		return "tutor/joinForm";
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

	@RequestMapping("outCon")//탈퇴
	   public String outCon() {
	      return "tutor/outCon";//탈퇴전 비밀번호 확인 폼
	}
	@RequestMapping("outOk")//탈퇴 완료
	public String outOk(
			@RequestParam(value="tutorPw") String tutorPw,
			HttpSession session, Model model){
		String path = tutorOutService.tutorDelete(tutorPw, session, model);
		return path;
	}
	@Autowired
	TutorInfoService tutorInfoService ;
	@RequestMapping("perData")//튜터 개인정보
	public String perData(HttpSession session, Model model) {
		tutorInfoService.perData(session,model);
		return "tutor/perData";
	}
	@RequestMapping("sujung")//튜터 개인정보 수정
	public String sujung(HttpSession session, Model model,
			@ModelAttribute TutorCommand tutorCommand) {
		tutorInfoService.perData(session, model);
		return "tutor/sujung";
	}
	@Autowired
	TutorUpdateService tutorUpdateService;//튜터개인정보 수정 완료
	@RequestMapping(value="sujungOk", method=RequestMethod.POST)
	public String sujungOk(TutorCommand tutorCommand, HttpSession session) {
		tutorUpdateService.perDataUpdate(tutorCommand, session);
		return "redirect:perData";
	}
	@Autowired
	TutorPromanageService tutorPromanageService ;//튜터 강의 정보
	@RequestMapping("promanage")
	public String promanage(HttpSession session, Model model) {
		tutorPromanageService.promanage(session,model);
		return "tutor/promanage";
	}
	@RequestMapping("promanageSujung")//튜터 강의 정보 수정
	public String promanageSujung(HttpSession session, Model model) {
		tutorPromanageService.promanage(session, model);
		return "tutor/promanageSujung";
	}
	@RequestMapping(value="promanageSujungOk", method=RequestMethod.POST) //튜터 강의정보 수정 완료
	public String promanageSujungOk(TutorCommand tutorCommand, HttpSession session) {
		tutorUpdateService.promanageSujung(tutorCommand, session);
		return "redirect:promanage";
	}
	@Autowired
	   TutorOutService tutorOutService;//탈퇴시 이동 주소
	   @RequestMapping("OutOk")
	   public String OutOk(
	         @RequestParam(value="tutorPw") String tutorPw,
	         HttpSession session, Model model){
	      String path = tutorOutService.tutorDelete(tutorPw, session, model);
	      return path;
	   }
	   @Autowired
		TutorPwChangeService tutorPwChangeService ;//튜터 비번 변경
	   @RequestMapping("pwChange")
	   public String pwChange() {
	      return "tutor/pwChange";
	}	
		@RequestMapping(value="pwChangeOk", method=RequestMethod.POST)//튜터 비번 변경 완료
		public String pwChangeOk(TutorCommand tutorCommand, Errors errors, HttpSession session) {
			tutorPwChangeService.pwChange(tutorCommand, errors, session);
			if(errors.hasErrors()) {
				return "tutor/pwChange";
			}
			return "tutor/pwChangeOk";
		}
		@RequestMapping(value="pwChangeOk", method=RequestMethod.POST)//튜터 비번 변경 완료
		public String pwChangeOk(TutorCommand tutorCommand, Errors errors, HttpSession session) {
			tutorPwChangeService.pwChange(tutorCommand, errors, session);
			if(errors.hasErrors()) {
				return "tutor/pwChange";
			}
			return "tutor/pwChangeOk";
		}
}
		
		

	
	
	
	