package controller.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("class/retack")
public class RetackCtgrController {
	
	@RequestMapping("estate")
	public String estate() {
		return "class/classList";
	}
	@RequestMapping("fund")
	public String fund() {
		return "class/classList";
	}
	@RequestMapping("stock")
	public String stock() {
		return "class/classList";
	}
}
