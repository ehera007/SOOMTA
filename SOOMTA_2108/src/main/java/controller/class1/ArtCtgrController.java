package controller.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("class/art")
public class ArtCtgrController {
		@RequestMapping("art")
		public String art() {
			return "class/classList";
		}
		
		@RequestMapping("cook")
		public String cook() {
			return "class/classList";
		}
		
		@RequestMapping("music")
		public String music() {
			return "class/classList";
		}
		
		@RequestMapping("sports")
		public String sports() {
			return "class/classList";
		}
		

}
