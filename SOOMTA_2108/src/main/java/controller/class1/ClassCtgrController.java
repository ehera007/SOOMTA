package controller.class1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.class1.ClassDetailPageService;

@Controller
@RequestMapping("class")
public class ClassCtgrController {
	@Autowired
	ClassDetailPageService classDetailPageService;
	//학업
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
	public String classDetailPage(@RequestParam(value="classNo") String classNo, Model model) {
		classDetailPageService.classDetailPage(classNo, model);
		return "class/classDetailPage";
	}
}
