package controller.band;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandCtgCommand;
import service.band.BandAllListService;

@Controller
@RequestMapping("band/employement")


public class EmployementCtgrController {
	@Autowired
	BandAllListService bandAllListService;
	@RequestMapping("intertview")
	public String intertview(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"이력서/자소서/포트폴리오",page ,"intertview", bandCtgCommand);
		return "band/bandList";
	}

	@RequestMapping("personality")
	public String personality(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"면접",page ,"personality", bandCtgCommand);
		return "band/bandList";
	}

	
	@RequestMapping("resume")
	public String resume(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"인적성",page ,"resume", bandCtgCommand);
		return "band/bandList";
	}
	
	@RequestMapping("etc")
	public String etc(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"기타",page ,"etc", bandCtgCommand);
		return "band/bandList";
	}
}
