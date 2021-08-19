package controller.band;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("band/employement")


public class EmployementCtgrController {
	@RequestMapping("intertview")
	public String intertview() {
		return "band/bandList";
	}

	@RequestMapping("personality")
	public String personality() {
		return "band/bandList";
	}

	@RequestMapping("resume")
	public String resume() {
		return "band/bandList";
	}
}
