package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("help")
public class FaqController {
	@RequestMapping("member")//회원 이용 안내
	public String helpMember() {
		return "main/bottom_mem/helpMem";
	}
	@RequestMapping("memQ")//회원 자주 묻는 질문
	public String helpMemQ() {
		return "main/bottom_mem/memQ";
	}
	@RequestMapping("memNotice")//회원 공지사항
	public String memNotice() {
		return "main/bottom_mem/memNotice";
	}
	@RequestMapping("tutor")//튜터 이용 안내
	public String tuto() {
		return "main/bottom_tutor/helpTutor";
	}
	@RequestMapping("tutorQ")//튜터 자주 묻는 질문
	public String tutorQ() {
		return "main/bottom_tutor/tutorQ";
	}
	@RequestMapping("tutorNotice")//튜터 공지사항
	public String tutorNotice() {
		return "main/bottom_tutor/tutorNotice";
	}
	@RequestMapping("memSupport")//회원 이용안내 게시글보기
	public String memSupport() {
		return "main/bottom_mem/memSupport";
	}
	@RequestMapping("memNoticeC")//회원 공지사항 게시글 보기
	public String memNoticeC() {
		return "main/bottom_mem/memNoticeC";
	}
	@RequestMapping("memQnA")//회원 자주묻는질문 게시글 보기
	public String memQnA() {
		return "main/bottom_mem/memQnA";
	}

	@RequestMapping("tutorNoticeC")//튜터 공지사항 게시글 보기
	public String tutorNoticeC() {
		return "main/bottom_tutor/tutorNoticeC";
	}
	@RequestMapping("tutorSupport")//튜터 이용안내 게시글보기
	public String tutorSupport() {
		return "main/bottom_tutor/tutorSupport";
	}
	@RequestMapping("tutorQnA")//튜터 자주묻는질문 게시글 보기
	public String tutorQnA() {
		return "main/bottom_tutor/tutorQnA";
	}
}
