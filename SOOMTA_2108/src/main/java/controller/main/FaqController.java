package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.faq.FaqViewService;
import service.faq.MemListService;
import service.faq.TutorListService;

@Controller
@RequestMapping("help")
public class FaqController {
	@Autowired
	TutorListService tutorListService;
	@Autowired
	MemListService memListService;
	@Autowired
	FaqViewService faqViewService;
	
	@RequestMapping("member")//회원 이용 안내
	public String helpMember(Model model) {
		memListService.helpList(model);
		return "main/bottom_mem/helpMem";
	}
	@RequestMapping("memQ")//회원 자주 묻는 질문
	public String helpMemQ(Model model) {
		memListService.qList(model);
		return "main/bottom_mem/memQ";
	}
	@RequestMapping("memNotice")//회원 공지사항
	public String memNotice(Model model) {
		memListService.noticeList(model);
		return "main/bottom_mem/memNotice";
	}
	@RequestMapping("tutor")//튜터 이용 안내
	public String tuto(Model model) {
		tutorListService.helpList(model);
		return "main/bottom_tutor/helpTutor";
	}
	@RequestMapping("tutorQ")//튜터 자주 묻는 질문
	public String tutorQ(Model model) {
		tutorListService.qList(model);
		return "main/bottom_tutor/tutorQ";
	}
	@RequestMapping("tutorNotice")//튜터 공지사항
	public String tutorNotice(Model model) {
		tutorListService.noticeList(model);
		return "main/bottom_tutor/tutorNotice";
	}
	@RequestMapping("memSupport")//회원 이용안내 게시글보기
	public String memSupport() {
		return "main/bottom_mem/memSupport";
	}
	@RequestMapping(value="memNoticeC", method=RequestMethod.POST)//회원 공지사항 게시글 보기
	public String memNoticeC() {
		return "main/bottom_mem/memNoticeC";
	}
	@RequestMapping("memQnA")//회원 자주묻는질문 게시글 보기
	public String memQnA() {
		return "main/bottom_mem/memQnA";
	}

	@RequestMapping("tutorNoticeC")//튜터 공지사항 게시글 보기
	public String tutorNoticeC(@RequestParam(value="faqNo") String faqNo, Model model) {
		faqViewService.tNoticeC(faqNo, model);
		return "main/bottom_tutor/tutorNoticeC";
	}
	@RequestMapping("tutorSupport")//튜터 이용안내 게시글보기
	public String tutorSupport(@RequestParam(value="faqNo") String faqNo, Model model) {
		faqViewService.tSupport(faqNo, model);
		return "main/bottom_tutor/tutorSupport";
	}
	@RequestMapping("tutorQnA")//튜터 자주묻는질문 게시글 보기
	public String tutorQnA() {
		return "main/bottom_tutor/tutorQnA";
	}
}
