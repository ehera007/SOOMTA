package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.band.BandIntroService;

@Controller
@RequestMapping("band")
public class BandIntroController {
	@Autowired
	BandIntroService bandIntroService;
	
	@RequestMapping("bandIntro")
	public String bandIntro(@RequestParam(value="bandNo") String bandNo, Model model) {
		bandIntroService.bandIntro(bandNo, model);
		return "band/bandIntro";
	}
}