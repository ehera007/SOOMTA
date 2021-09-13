package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.main.BandSearchService;
import service.main.ClassSearchService;


@Controller
public class MainController {
	@Autowired
	ClassSearchService classSearchService;
	@Autowired
	BandSearchService bandSearchService;
	@RequestMapping("main")
	public String main() {
		return "main/main";
	}
	@RequestMapping(value="Allsearch", method=RequestMethod.POST)
	public String Allsearch(Model model){
		classSearchService.classSearch(model);
		bandSearchService.bandSearch(model);
		return "main/Allsearch";
	}
}
