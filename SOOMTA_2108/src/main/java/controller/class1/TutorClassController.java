package controller.class1;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ClassCommand;
import service.class1.ClassDeleteService;
import service.class1.ClassDetailService;
import service.class1.ClassNumberService;
import service.class1.ClassOpenService;
import service.class1.ClassRetouchService;
import service.class1.TutorClassListService;
//튜터 마이페이지 클래스 컨트롤러
@Controller
@RequestMapping("tutor")
public class TutorClassController {
	@Autowired
	ClassOpenService classOpenService;
	@Autowired
	TutorClassListService tutorClassListService;
	@Autowired
	ClassNumberService classNumberService;
	@Autowired
	ClassDetailService classDetailService;

	ClassDeleteService classDeleteService;
	@Autowired
	ClassRetouchService classRetouchService;
	@RequestMapping("newClassOpened") //클래스 개설 하기
	public String newClassCreate(Model model) {
		classNumberService.classNo(model);
		return "tutor/newClassOpened";
	}
	@RequestMapping(value="newClassOpenedOk", method = RequestMethod.POST) //클래스 생성 완료
	public String newClassOpened(ClassCommand classCommand,HttpSession session) {
		/*new ClassOpenValidate().validate(classCommand, errors);
		if(errors.hasErrors()) {
			return "tutor/newClassOpened";
		}*/
		classOpenService.classOpen(classCommand, session);
		return "redirect:MylectureList";
	}
	
	@RequestMapping("MylectureList") //개설 클래스 리스트
	public String MylectureList(Model model, HttpSession session) {
		tutorClassListService.tutorclassList(model, session);
		return "tutor/MylectureList";
	}
	
	@RequestMapping("reviewView") //클래스 리뷰`````
	public String reviewView() {
		return "tutor/reviewView";
	}
	@RequestMapping("classCheck") //클래스 상세보기
	public String newClassCheck(@RequestParam(value = "classNo") String classNo, Model model) {
		classDetailService.classDetail(classNo, model);
		return "tutor/classCheck";
	}
	@RequestMapping("classRetouch") //클래스 수정````
	public String classRetouch(@RequestParam(value = "classNo") String classNo, Model model) {
		classDetailService.classDetail(classNo, model);
		return "tutor/classRetouch";
	}
	@RequestMapping("classRetouchOk") //클래스 수정2
	public String classRetouch(ClassCommand classCommand, HttpSession session) {
		classRetouchService.classRetouch(classCommand, session);
		return "redirect:MylectureList";
	}
	@RequestMapping("classRetouchCheck") //클래스 수정 확인````
	public String classRetouchCheck() {
		return "tutor/classRetouchCheck";
	}
	@RequestMapping("classDelete") //클래스 삭제
	public String classDelete(@RequestParam(value="classNo") String classNo, HttpSession session) {
		classDeleteService.classDelete(classNo, session);
		return "redirect:MylectureList";
	}
}
