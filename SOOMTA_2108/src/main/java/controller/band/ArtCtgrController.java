package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandCtgCommand;
import service.band.BandAllListService;

@Controller

@RequestMapping("band/art")
public class ArtCtgrController {
	@Autowired
	BandAllListService bandAllListService;
	@RequestMapping("art")
	public String art(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"미술",page ,"art", bandCtgCommand);
		return "band/bandList";
	}
	@RequestMapping("cook")
	public String cook(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"초등",page ,"cook", bandCtgCommand);
		return "band/bandList";
	}

	@RequestMapping("music")
	public String music(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"음악",page ,"music", bandCtgCommand);
		return "band/bandList";
	}

	@RequestMapping("sports")
	public String sports(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"스포츠",page ,"sports", bandCtgCommand);
		return "band/bandList";
	}
	
	@RequestMapping("etc")
	public String etc(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"기타",page ,"etc", bandCtgCommand);
		return "band/bandList";
	}
	
}