package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("band")
public class BandIntroController {
	@RequestMapping("bandIntro")
	public String bandIntro() {
		return "band/bandIntro";
	}
}