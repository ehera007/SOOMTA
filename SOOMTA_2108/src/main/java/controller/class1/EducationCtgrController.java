package controller.class1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.class1.ClassListService;

@Controller
@RequestMapping("class/education")
public class EducationCtgrController {
		@Autowired
		ClassListService classListService;
		
		@RequestMapping("child")
		public String childClassList(Model model){
			classListService.classList(model,"유아");
			return "class/classList";
		}
		@RequestMapping("elementary")
		public String elementary(Model model){
			classListService.classList(model,"초등");
			return "class/classList";
		}
		@RequestMapping("medium")
		public String medium(Model model){
			classListService.classList(model,"중등");
			return "class/classList";
		}
		@RequestMapping("employeement")
		public String employeement(Model model){
			classListService.classList(model,"입시/편입");
			return "class/classList";
		}
		@RequestMapping("ect")
		public String ect(Model model){
			classListService.classList(model,"기타");
			return "class/classList";
		}
		
		
}
