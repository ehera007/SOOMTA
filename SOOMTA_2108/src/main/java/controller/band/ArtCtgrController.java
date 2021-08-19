package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("band/art")
public class ArtCtgrController {

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
	public String sports() {
		return "band/bandList";
	}
	
	@RequestMapping("etc")
	public String etc() {
		return "band/bandList";
	}
	
}