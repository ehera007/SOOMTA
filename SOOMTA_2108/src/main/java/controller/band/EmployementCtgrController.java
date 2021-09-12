package controller.band;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.band.BandAllListService;

@Controller
@RequestMapping("band/employement")


public class EmployementCtgrController {
	@Autowired
	BandAllListService bandAllListService;
	@RequestMapping("intertview")
	public String intertview(Model model) {
		bandAllListService.bandAllList(model, "이력서/자소서/포트폴리오");
		return "band/bandList";
	}

	@RequestMapping("personality")
	public String personality(Model model) {
		bandAllListService.bandAllList(model, "면접");
		return "band/bandList";
	}

	
	@RequestMapping("resume")
	public String resume(Model model) {
		bandAllListService.bandAllList(model, "인적성");
		return "band/bandList";
	}
	
	@RequestMapping("etc")
	public String etc(Model model) {
		bandAllListService.bandAllList(model, "기타");
		return "band/bandList";
	}
}
