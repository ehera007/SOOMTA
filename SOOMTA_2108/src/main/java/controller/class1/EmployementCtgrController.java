package controller.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("class/employement")
public class EmployementCtgrController {
		@RequestMapping("intertview")
		public String intertview() {
			return "class/classList";
		}
		
		@RequestMapping("personality")
		public String personality() {
			return "class/classList";
		}
		
		@RequestMapping("resume")
		public String resume() {
			return "class/classList";
		}
}
