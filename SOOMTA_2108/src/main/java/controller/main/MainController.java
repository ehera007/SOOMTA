package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String Allsearch(Model model, 
			@RequestParam(value="keyWord") String keyWord){
		classSearchService.classSearch(model, keyWord );
		bandSearchService.bandSearch(model, keyWord);
		return "main/Allsearch";
	}
}
