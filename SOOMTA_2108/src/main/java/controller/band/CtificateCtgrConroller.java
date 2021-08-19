package controller.band;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("band/ctificate")
public class CtificateCtgrConroller {
			@RequestMapping("publicOfficer")
			public String publicOfficer(){
				return "band/bandList";
			}
			@RequestMapping("NCS")
			public String NCS(){
				return "band/bandList";
			}
			@RequestMapping("taxation")
	
			public String taxation(){
				return "band/bandList";
			}
			@RequestMapping("foreign")
			public String foreign(){
				return "band/bandList";
			}
			@RequestMapping("design")
			public String design(){
				return "band/bandList";
			}
}
