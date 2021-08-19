package controller.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("class/ctificate")
public class CtificateCtgrConroller {
			@RequestMapping("publicOfficer")
			public String publicOfficer(){
				return "class/classList";
			}
			@RequestMapping("NCS")
			public String NCS(){
				return "class/classList";
			}
			@RequestMapping("taxation")
			public String taxation(){
				return "class/classList";
			}
			@RequestMapping("foreign")
			public String foreign(){
				return "class/classList";
			}
			@RequestMapping("design")
			public String design(){
				return "class/classList";
			}
}
