package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("band/retack")
public class RetackCtgrConroller {

	@RequestMapping("estate")
	public String estate() {
		return "band/bandList";
	}

	@RequestMapping("fund")
	public String fund() {
		return "band/bandList";
	}

	@RequestMapping("stock")
	public String stock() {
		return "band/bandList";

	}
	
}
