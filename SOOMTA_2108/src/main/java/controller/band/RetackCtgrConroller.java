package controller.band;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.band.BandAllListService;

@Controller
@RequestMapping("band/retack")
public class RetackCtgrConroller {
	@Autowired
	BandAllListService bandAllListService;
	@RequestMapping("estate")
	public String estate(Model model) {
		bandAllListService.bandAllList(model, "부동산");
		return "band/bandList";
	}

	@RequestMapping("fund")
	public String fund(Model model) {
		bandAllListService.bandAllList(model, "펀드");
		return "band/bandList";
	}

	@RequestMapping("stock")
	public String stock(Model model) {
		bandAllListService.bandAllList(model, "주식");
		return "band/bandList";

	}
	
}
