package controller.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("class")
public class ClassCtgrController {
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
	@RequestMapping("classDetailPage")
	public String classDetailPage() {
		return "class/classDetailPage";
	}
}
