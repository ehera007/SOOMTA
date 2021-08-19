package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("band/education")
public class EducationCtgrController {
		@RequestMapping("child")
		public String child(){
			return "band/bandList";
		}
		@RequestMapping("elementary")
		public String elementary(){
			return "band/bandList";
		}
		@RequestMapping("medium")
		public String medium(){
			return "band/bandList";
		}
		@RequestMapping("employeement")
		public String employeement(){
			return "band/bandList";
		}
		@RequestMapping("ect")
		public String ect(){
			return "band/bandList";
		}
		
		
}
