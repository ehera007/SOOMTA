package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("band")
public class BandCtgrController {
	@RequestMapping("mainCtgr")
	public String mainCtgr() {
		return "band/bandMainCtgr";
	}

	@RequestMapping("education")
	public String education() {
		return "band/educationCtgr";
	}
	@RequestMapping("certificate")
	public String certificate() {
		return "band/certificateCtgr";
	}
	@RequestMapping("art")
	public String art() {
		return "band/artCtgr";
	}
	@RequestMapping("retack")
	public String retack() {
		return "band/retackCtgr";
	}
	@RequestMapping("employeement")
	public String employeement() {
		return "band/employeementCtgr";
	}
	@RequestMapping("bandList")
	public String ect() {
		return "band/bandList";
	}
	@RequestMapping("bandDetailPage")
	public String bandsDetailPage() {
		return "band/bandDetailPage";
	}
	
	
	
}
