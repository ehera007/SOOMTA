package controller.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("class/education")
public class EducationCtgrController {
		@RequestMapping("child")
		public String child(){
			return "class/classList";
		}
		@RequestMapping("elementary")
		public String elementary(){
			return "class/classList";
		}
		@RequestMapping("medium")
		public String medium(){
			return "class/classList";
		}
		@RequestMapping("employeement")
		public String employeement(){
			return "class/classList";
		}
		@RequestMapping("ect")
		public String ect(){
			return "class/classList";
		}
		
		
}
