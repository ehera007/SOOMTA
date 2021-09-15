package controller.class1;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.class1.ClassDetailPageService;
import service.class1.ClassWishService;
import service.main.ClassSearchService;

@Controller
@RequestMapping("class")
public class ClassCtgrController {
	@Autowired
	ClassDetailPageService classDetailPageService;
	@Autowired
	ClassSearchService classSearchService;
	//학업
	@Autowired
	ClassWishService classWishService;
	@RequestMapping("mainCtgr")
	public String classMainCtgr(){
		return "class/classMainCtgr";
	}
	@RequestMapping("education")
	public String education() {
		return "class/educationCtgr";
	}
	@RequestMapping("certificate")
	public String certificate() {
		return "class/certificateCtgr";
	}
	@RequestMapping("art")
	public String art() {
		return "class/artCtgr";
	}
	@RequestMapping("retack")
	public String retack() {
		return "class/retackCtgr";
	}
	@RequestMapping("employeement")
	public String employeement() {
		return "class/employeementCtgr";
	}
	
	@RequestMapping("ect")
	public String ect() {
		return "class/ectCrgr";
	}
	@RequestMapping("classDetailPage") //클래스 상세보기 페이지
	public String classDetailPage(@RequestParam(value="classNo") String classNo, @RequestParam(value="tutorId")  String tutorId, Model model, HttpSession session) {
		classDetailPageService.classDetailPage(classNo, tutorId, model, session);
		return "class/classDetailPage";
	}
	@RequestMapping(value="classSearch", method=RequestMethod.POST)
	public String classSearch(Model model, @RequestParam(value="keyWord") String keyWord) {
		classSearchService.classSearch(model, keyWord);
		return "class/classSearch";
	}
	@RequestMapping("wish")
	public String wish(@RequestParam(value="classNo")String classNo, @RequestParam(value="tutorId") String tutorId, Model model, HttpSession session) {
		classWishService.classWish(classNo, tutorId,  session, model);
		return "class/wishOk";
	}
	
}