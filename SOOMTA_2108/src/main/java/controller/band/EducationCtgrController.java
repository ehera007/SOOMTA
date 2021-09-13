package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandCtgCommand;
import service.band.BandAllListService;

@Controller
@RequestMapping("band/education")
public class EducationCtgrController {
		@Autowired
		BandAllListService bandAllListService;
		
		@RequestMapping("child")
		public String child(Model model, BandCtgCommand bandCtgCommand,
				@RequestParam( value="page", defaultValue = "1") Integer page){
			bandAllListService.bandAllList(model,"유아",page ,"child", bandCtgCommand);
			return "band/bandList";
		}
		@RequestMapping("elementary")
		public String elementary(Model model, BandCtgCommand bandCtgCommand,
				@RequestParam( value="page", defaultValue = "1") Integer page){
			bandAllListService.bandAllList(model,"초등",page ,"elementary", bandCtgCommand);
			return "band/bandList";
		}
		@RequestMapping("medium")
		public String medium(Model model, BandCtgCommand bandCtgCommand,
				@RequestParam( value="page", defaultValue = "1") Integer page){
			bandAllListService.bandAllList(model,"중등", page,"medium", bandCtgCommand);
			return "band/bandList";
		}
		@RequestMapping("employeement")
		public String employeement(Model model, BandCtgCommand bandCtgCommand,
				@RequestParam( value="page", defaultValue = "1") Integer page){
			bandAllListService.bandAllList(model,"입시/편입", page, "employeement", bandCtgCommand);
			return "band/bandList";
		}
		@RequestMapping("etc")
		public String ect(Model model, BandCtgCommand bandCtgCommand,
				@RequestParam( value="page", defaultValue = "1") Integer page){
			bandAllListService.bandAllList(model,"기타", page, "ect", bandCtgCommand);
			return "band/bandList";
		}
		
		
		
}
