package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.band.BandAllListService;

@Controller

@RequestMapping("band/art")
public class ArtCtgrController {
	@Autowired
	BandAllListService bandAllListService;
	@RequestMapping("art")
	public String art() {
		return "band/bandList";
	}
	@RequestMapping("cook")
	public String cook() {
		return "band/bandList";
	}

	@RequestMapping("music")
	public String music() {
		return "band/bandList";
	}

	@RequestMapping("sports")
	public String sports(Model model) {
		bandAllListService.bandAllList(model, "스포츠");
		return "band/bandList";
	}
	
	@RequestMapping("etc")
	public String etc() {
		return "band/bandList";
	}
	
}