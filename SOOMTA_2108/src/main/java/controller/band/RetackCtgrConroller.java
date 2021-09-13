package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.BandCtgCommand;
import service.band.BandAllListService;

@Controller
@RequestMapping("band/retack")
public class RetackCtgrConroller {
	@Autowired
	BandAllListService bandAllListService;
	@RequestMapping("estate")
	public String estate(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"부동산",page ,"estate", bandCtgCommand);
		return "band/bandList";
	}

	@RequestMapping("fund")
	public String fund(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"펀드",page ,"fund", bandCtgCommand);
		return "band/bandList";
	}

	@RequestMapping("stock")
	public String stock(Model model, BandCtgCommand bandCtgCommand,
			@RequestParam( value="page", defaultValue = "1") Integer page) {
		bandAllListService.bandAllList(model,"주식",page ,"stock", bandCtgCommand);
		return "band/bandList";

	}
	
}
