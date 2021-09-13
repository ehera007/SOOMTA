package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandCtgCommand;
import service.band.BandAllListService;

@Controller
@RequestMapping("band/ctificate")
public class CtificateCtgrConroller {
	@Autowired
	BandAllListService bandAllListService;
			@RequestMapping("publicOfficer")
			public String publicOfficer(Model model, BandCtgCommand bandCtgCommand,
					@RequestParam( value="page", defaultValue = "1") Integer page){
				bandAllListService.bandAllList(model,"공무원", page ,"publicOfficer", bandCtgCommand);
				return "band/bandList";
			}
			@RequestMapping("NCS")
			public String NCS(Model model, BandCtgCommand bandCtgCommand,
					@RequestParam( value="page", defaultValue = "1" )Integer page){
				bandAllListService.bandAllList(model,"NCS",page ,"NCS", bandCtgCommand);
				return "band/bandList";
			}
			@RequestMapping("taxation")
			public String taxation(Model model, BandCtgCommand bandCtgCommand,
					@RequestParam( value="page", defaultValue = "1") Integer page){
				bandAllListService.bandAllList(model,"세무/회계/변리",page ,"taxation", bandCtgCommand);
				return "band/bandList";
			}
			@RequestMapping("foreign")
			public String foreign(Model model, BandCtgCommand bandCtgCommand,
					@RequestParam( value="page", defaultValue = "1") Integer page){
				bandAllListService.bandAllList(model,"외국어",page ,"foreign", bandCtgCommand);
				return "band/bandList";
			}
			@RequestMapping("design")
			public String design(Model model, BandCtgCommand bandCtgCommand,
					@RequestParam( value="page", defaultValue = "1") Integer page){
				bandAllListService.bandAllList(model,"디자인",page ,"design", bandCtgCommand);
				return "band/bandList";
			}
}
