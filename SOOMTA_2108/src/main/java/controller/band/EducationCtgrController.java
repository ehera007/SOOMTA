package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.band.BandAllListService;

@Controller
@RequestMapping("band/education")
public class EducationCtgrController {
		@Autowired
		BandAllListService bandAllListService;
		
		@RequestMapping("child")
		public String child(Model model){
			bandAllListService.bandAllList(model, "유아");
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
		@RequestMapping("etc")
		public String ect(){
			return "band/bandList";
		}
		
		
		
}
