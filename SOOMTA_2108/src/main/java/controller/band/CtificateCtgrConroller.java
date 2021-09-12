package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.band.BandAllListService;

@Controller
@RequestMapping("band/ctificate")
public class CtificateCtgrConroller {
	@Autowired
	BandAllListService bandAllListService;
			@RequestMapping("publicOfficer")
			public String publicOfficer(Model model){
				bandAllListService.bandAllList(model, "공무원");
				return "band/bandList";
			}
			@RequestMapping("NCS")
			public String NCS(Model model){
				bandAllListService.bandAllList(model, "NCS");
				return "band/bandList";
			}
			@RequestMapping("taxation")
			public String taxation(Model model){
				bandAllListService.bandAllList(model, "세무/회계/변리");
				return "band/bandList";
			}
			@RequestMapping("foreign")
			public String foreign(Model model){
				bandAllListService.bandAllList(model, "외국어");
				return "band/bandList";
			}
			@RequestMapping("design")
			public String design(Model model){
				bandAllListService.bandAllList(model, "디자인");
				return "band/bandList";
			}
}
